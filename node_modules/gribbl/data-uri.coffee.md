Routines for building (data: URIs)[http://tools.ietf.org/html/rfc2397].
This depends on nothing much and could/should probably be its own
npm package at some point.

I want something that can do %-encoding (vs base64) when doing so
makes sense, that can identify at least some of the MIME types I
care about based on file contents rather than relying solely on
file names, and that is small and fast and has few dependencies.
I guess stream support might be nice too.

Let's just let the module's entire API consist of a single function
that encodes its first argument and returns the resulting URI as a
string, taking an options object as a second argument.  Both arguments
are optional -- for example if you just wanted to read from a file,
you can specify the `path` option (or `filename`) and omit `contents`
(or leave it null).

    module.exports = (contents, opts) ->
      path = null
      if contents and not opts then [contents, opts] =
        if 'object' != typeof contents then [contents, {}]
        else if contents.contents then [contents.contents, contents]
        else if path = contents.path or contents.filename then [null, contents]
        else [contents, {}]
      path or= opts.path or opts.filename
      contents ?= require('fs').readFileSync path

If the caller was kind enough to spoon-feed us a MIME content-type,
let's figure out whether it has a `charset` in it already, so we
can avoid redundantly adding a second one later, and so we can use
it to properly encode `contents` passed in as a string.

      type = opts.type or opts.mime_type or opts.content_type or ''
      charset = opts.charset or opts.encoding
      m = /;\s*charset\s*=\s*['"]?([^\s"';]+)/i.exec type
      type_has_charset = !!m
      if type_has_charset then charset or= m[1]

The contents can be a buffer or a string.  If it's a string, we'll
default to UTF-8 encoding (which MIME prefers to spell that way,
rather than as "utf8", so we'll go with that unless instructed
otherwise).

      if 'string' is typeof contents
        contents = new Buffer contents, opts.encoding or opts.charset or 'utf8'
        charset or= 'UTF-8'

Now we're ready to figure out the MIME content-type.  Obviously if
we were given a type, we should just use that.  Next preference is
to use a filename suffix, if we have a recognizable one, if only
because that isn't likely to surprise anyone.

      if not type and path and m = /\.([^./\\]+)$/.exec path
        type = ext_to_type[m[1].toLowerCase()]

If that doesn't work, look for magic numbers at the start of the contents.

      if not type and contents.length
        entries = prefixes_by_first_byte[contents[0]]
        if entries
          for entry in entries
            if entry.prefix.equals contents[...entry.prefix.length]
              type = entry.type
              break

If we're still drawing a blank, default to a generic text type if we
have a charset (or were given a string instead of a buffer), binary
otherwise.

      type or= if charset then 'text/plain' else 'application/octet-stream'

Even if we don't have a charset, we should probably default to
supplying one if applicable, rather than remaining at the mercy of
browser-specific auto-detection heuristics.

      if not opts.no_default_charset
        charset or= opts.default_charset or 'UTF-8'

If we're using a textual content-type, and we have or were given a
charset, append it now.

      if charset and not type_has_charset and /^text\//.test type
        type = "#{type};charset=#{charset}"

Decide whether we're going to treat single-quotes as URL-safe
characters or not.  Technically they don't need to be URL-encoded,
but doing so now is shorter than entity-encoding them later.  Let's
default to escaping them, just to be safe.

      is_urlsafe = if opts.allow_single_quotes then is_urlsafe_with_squote
      else is_urlsafe_without_squote

Next, figure out whether we want to use base64 or not.  If the
caller is telling us what to do, go with that.  Otherwise, figure
out whether URL-encoding would be shorter by scanning the buffer.

      base64 = opts.base64
      if not base64? or base64 == 'auto'
        limit = opts.max_scan_bytes or 0
        limit = contents.length if limit <= 0
        limit = Math.min contents.length, limit
        base64_len = 7 + 4*Math.ceil limit/3
        non_base64_len = limit
        for byte in contents[...limit]
          if not is_urlsafe[byte] then non_base64_len += 2
          if non_base64_len > base64_len then break
        base64 = base64_len < non_base64_len

Allow the caller to specify a fragment to be appended to the URL.

      fragment = opts.fragment or ''
      if fragment and fragment[0] != '#' then fragment = '#' + fragment

Ready to encode.  Base64 is easy, bceause the Buffer module does
all the work.

      if base64
        return "data:#{type};base64,#{contents.toString 'base64'}#{fragment}"

URL encoding is slightly more complicated, because we're doing it
by hand.  Which means we may as well let the caller decide whether
they want lowercase hex or not.  I'm defaulting to uppercase because
I feel like uppercase typically stands out a bit better, assuming
most of the unescaped text is lowercase.

      hex = if opts.lowercase_hex then '0123456789abcdef'
      else '0123456789ABCDEF'
      chars = for byte in contents
        if is_urlsafe[byte] then String.fromCharCode byte
        else "%#{hex[byte >> 4]}#{hex[byte & 0xf]}"
      return "data:#{type},#{chars.join ''}#{fragment}"

That's it for our API function.  All that remains is a bit of
one-time module initialization.

Initialize our two sets of URL-safe byte values.

    is_urlsafe_with_squote = []
    is_urlsafe_without_squote = []
    is_urlsafe_with_squote["'".charCodeAt 0] = true
    do -> for ch in ("-_.!~*();/?:@&=+$,0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
        "abcdefghijklmnopqrstuvwxyz")
      byte = ch.charCodeAt 0
      is_urlsafe_with_squote[byte] = true
      is_urlsafe_without_squote[byte] = true

Initialize our dictionary of known content types.

    ext_to_type = {}
    prefixes_by_first_byte = []
    do -> for magic in [
      {type: 'text/plain', exts: 'txt'}
      {type: 'text/html', exts: 'html htm', prefix: '<!DOCTYPE html>'}
      {type: 'text/javascript', exts: 'js'}
      {type: 'text/css', exts: 'css'}
      {type: 'image/gif', prefixes: ['GIF87a', 'GIF89a']}
      {type: 'image/jpeg', exts: 'jpg jpeg', prefix: [0xff, 0xd8, 0xff]}
      {type: 'image/png', prefix: [0x89,0x50,0x4e,0x47,0x0d,0x0a,0x1a,0x0a]}
      {type: 'application/font-woff', prefix: 'wOFF'}
    ]
      type = magic.type
      for ext in (magic.exts or /\w+$/.exec(magic.type)[0]).split /\s+/
        ext_to_type[ext] = type
      for prefix in magic.prefixes or [magic.prefix]
        if prefix
          prefix = new Buffer prefix
          (prefixes_by_first_byte[prefix[0]] or= []).push {prefix, type}

Can we test this?  I bet we can test this.

    if module is require.main
      assert = require 'assert'
      data_uri = module.exports
      t = (expected, args...) -> assert.strictEqual expected, data_uri args...

A basic string.  Note that the spec allows us to omit `text/plain`,
and maybe we should take it up on that generous offer, but I can't
bring myself to care because who ever uses `text/plain` for anything?
And this is, uh, clearer.

      t 'data:text/plain;charset=UTF-8,foobar', 'foobar'

We can request base64 encoding, even though it makes the result
longer and harder to read.

      t 'data:text/plain;charset=UTF-8;base64,Zm9vYmFy', 'foobar', base64: yes

We can pass the contents in as a field in the options object, alongside
other options.

      t 'data:text/plain;charset=ascii,foobar',
          contents: 'foobar', charset: 'ascii'

If we want to pass in a string and give one encoding name to the
Buffer module to encode the string and use another name for the
returned charset, we need to use the `encoding` option.

      t 'data:text/plain;charset=bogus,foobar',
          contents: 'foobar', charset: 'bogus', encoding: 'utf8'
      t 'data:text/plain;charset=bogus,foobar',
          'foobar', type: 'text/plain;charset=bogus', encoding: 'utf8'

The `no_default_charset` option doesn't affect strings.

      t 'data:text/plain;charset=UTF-8,foobar',
          'foobar', no_default_charset: true

If we pass in a buffer, the default MIME type changes, even if the
bytes all happen to be ASCII.

      t 'data:application/octet-stream,foobar', new Buffer 'foobar'

Derive MIME type from filename.

      t 'data:text/plain;charset=UTF-8,foobar',
          new Buffer('foobar'), filename: 'foo.txt'
      t 'data:text/plain;charset=UTF-8,foobar',
          new Buffer('foobar'), path: 'foo.txt'
      t 'data:image/gif,foobar', new Buffer('foobar'), path: 'foo.gif'

With bytes as input, we can omit the charset.  This may be preferable
if we really don't know what encoding the file is using, and would
rather let the browser guess, but it seems dicey to me.

      t 'data:text/plain,foobar',
          new Buffer('foobar'), path: 'foo.txt', no_default_charset: true

It's quite easy to make a text file that looks like a GIF.  Hardly
anybody actually does this, though, except to annoy people or prove
a point or make an oversimplified test case.

      t 'data:image/gif,GIF89a%20foobar', 'GIF89a foobar'

Same for `.woff`, which is a web font file format you can use in
CSS nowadays.

      t 'data:application/font-woff,wOFF%20foobar', 'wOFF foobar'

We can identify HTML.  There's no point in scanning the contents
for `meta charset`, right?  Since the browser will do that anyway?
Probably?

      t 'data:text/html;charset=UTF-8,%3C!DOCTYPE%20html%3E', '<!DOCTYPE html>'

Let's do some pretend JPEG experiments, so we can test the
`lowercase_hex` option, and the logic that decides when to automatically
cut over to base64.  Note that we're padding with equals signs to
make the base64 data a multiple of 4 bytes.  The RFC wasn't super
clear about that, was it?  I should check again.  Did any of the
examples show definitely unpadded base64?  Anyway it doesn't matter
what the RFC says....

      jpg_buf = (bytes...) -> new Buffer [0xff, 0xd8, 0xff, 0xe0, bytes...]
      t 'data:image/jpeg,%FF%D8%FF%E0', jpg_buf()
      t 'data:image/jpeg,%ff%d8%ff%e0', jpg_buf(), lowercase_hex: yes
      t 'data:image/jpeg,%FF%D8%FF%E0%FF', jpg_buf 0xff
      t 'data:image/jpeg;base64,/9j/4P8A', jpg_buf 0xff, base64: yes
      t 'data:image/jpeg;base64,/9j/4P//', jpg_buf 0xff, 0xff
      t 'data:image/jpeg;base64,/9j/4P///w==', jpg_buf 0xff, 0xff, 0xff
      t 'data:image/jpeg,%FF%D8%FF%E0%FF%FF', jpg_buf(0xff, 0xff), base64: no

Make sure we can actually read from a file.  I happen to have a
relatively short one lying around already that has "test" in the
name, so we can use that.

      t 'data:text/javascript;charset=UTF-8,' +
        'exports.msg%20=%20%27helloes%20worldses%27;%0A', filename: 'test.js'
      t 'data:text/javascript;charset=UTF-8,' +
        'exports.msg%20=%20%27helloes%20worldses%27;%0A', path: 'test.js'

You can specify your own MIME type.  By three different names, for
some reason.  Is this a good idea?  Maybe not!

      t 'data:foo/bar,foobar', 'foobar', type: 'foo/bar'
      t 'data:foo/bar,foobar', 'foobar', mime_type: 'foo/bar'
      t 'data:foo/bar,foobar', 'foobar', content_type: 'foo/bar'

Types that start with `text/` are special!

      t 'data:text/bar;charset=UTF-8,foobar', 'foobar', type: 'text/bar'

Demonstrate the `allow_single_quotes` option, in case someone cares.

      t "data:text/plain;charset=UTF-8,isn%27t", "isn't"
      t "data:text/plain;charset=UTF-8,isn't", "isn't", allow_single_quotes: yes

Demonstrate the `fragment` option.

      t 'data:text/plain;charset=UTF-8,foobar#foo', 'foobar', fragment: 'foo'
      t 'data:text/plain;charset=UTF-8,foobar#foo', 'foobar', fragment: '#foo'
      t 'data:text/plain;charset=UTF-8,foobar#', 'foobar', fragment: '#'
      t 'data:text/plain;charset=UTF-8,foobar', 'foobar', fragment: ''
      t 'data:text/plain;charset=UTF-8,foobar', 'foobar', fragment: null


First, a gulp-flavored API.

Seems like nobody bothers to support streaming?  I guess gulp.src()
buffers everything by default.  Just as well, since the Jade API
doesn't support streaming.

    module.exports = (opts = {}) -> require('through2').obj (file, enc, cb) ->
      {PluginError, replaceExtension} = require 'gulp-util'
      fail = (e) -> cb new PluginError 'gribbl', e
      if file.isStream() then return fail 'streaming not supported'

Output file name should end with `.html`.  I kinda want to do
something here to allow the input and output filenames to be distinct
in the case where the input is also `.html`, but I'm not going to
worry about that for now.  Certainly, when using this with gulp,
you can apply further renaming or send it to another directory.

      inPath = file.path
      file.path = replaceExtension file.path, '.html'
      if not file.isBuffer() then return cb null, file

If this is a `.jade` file, render it; otherwise, assume it's HTML
already.  Jade templates have access to the following variables:

* `filename` is the name of the Jade template itself (also used by Jade)
* `pretty` is true if pretty-printing was requested (also used by Jade)
* `require` can be used to load node modules at template rendering time
* `gribblOpts` contains the options passed to the gribbl API or CLI
* `packagePath` points to the template's `package.json` (if it has one)
* `package` contains the parsed contents of the template's `package.json`

Jade never ends its output in a newline, which seems forgiveable
when pretty mode is turned off (the default), but when it's turned
on... text files should end in a newline, dammit.

      text = String file.contents
      if /\.jade$/.test inPath
        jopts =
          filename: inPath
          pretty: opts.pretty,
          globals: ['require']
          gribblOpts: opts,
          packagePath: require('relative-package') inPath
        jopts.package = if jopts.packagePath
          JSON.parse require('fs').readFileSync jopts.packagePath, 'utf8'
        try
          text = require('jade').render text, jopts
        catch e
          return fail e
        if jopts.pretty then text += '\n'

Now that we have the HTML, it's time to start inlining things.

Define a subroutine that takes a URI, reads the corresponding local
file, and returns the name and contents as an object, or returns
null if we don't want to inline the URL because it isn't relative
or it's just the element ID of an SVG image already contained in
this document or whatever.  Also a subroutine that just computes
the filename without trying to read the file, because if the file
is a script we want to let browserify read it, because otherwise
there's no way to tell browserify what the file name was and it
makes a wrong one up for the source map and so on.

      resolvePath = (url, basePath = inPath) ->
        if /^(?:\w[\w+.-]*:|\/)/.test url then return
        if not m = /(^[^#]+)(#.*)?/.exec url then return
        {fragment: m[2], path: require('path').resolve basePath, '..', m[1]}
      readUrl = (url, encoding, basePath) ->
        if not result = resolvePath url, basePath then return
        result.contents = require('fs').readFileSync result.path, encoding
        return result

In many cases we're going to want to convert the object returned by
`readUrl` into a `data:` URI.

      toUrl = (options) -> if options then require('./data-uri') options
      fixUrl = (url, basePath) -> toUrl readUrl url, null, basePath

A routine to inline URLs in CSS.  Modifies an object returned by
readUrl in-place, and returns true if anything changed.

      fixCSS = (copts) ->
        orig = copts.contents
        copts.contents = orig.replace /\burl\s*\(\s*(["']?)([^()'"]+)\1\s*\)/g,
          (s, q, u) -> if u = fixUrl u, copts.path then """url("#{u}")""" else s
        orig != copts.contents

[Maybe I should try to find a real CSS parser instead of using a
heuristic?  The routine above might apply spurious subsitutions to
comments or literal text (e.g. `content`), and it doesn't understand
backslash-escaping.  Also I'm pretty sure URLs are allowed to contain
unescaped parentheses and single quotes.]

For HTML, we're going to use `cheerio`, a jQuery-like library that
works on strings of HTML rather than a browser DOM, to help us find
things in the HTML that need inlining.  (If Jade worked with streams,
I might try `trumpet` here instead.  But it doesn't.)

      $ = require('cheerio').load text

Inline any relative images as data: URIs.

      for img in $('img[src]').get()
        $img = $ img
        if url = fixUrl $img.attr 'src' then $img.attr 'src', url

Inline any relative URLs we find in already-inlined stylesheets.
Note that we want to do this *before* inlining external stylesheets,
because these URLs are relative to the parent HTML document, not
relative to the external stylesheet.

      for style in $('style')
        $style = $ style
        css = contents: $style.html()
        if fixCSS css then $style.replaceWith "<style>#{css.contents}</style>"

[Unfortunately the above ends up destroying any attributes of the
`style` tag whenever we rewrite any URLs.  I should probably fix
that.  Unfortunately `cheerio` seems to get upset if I pass non-HTML
as input to the `.html` method.  But I don't think I can use `.text`,
because the contents of a style tag are *forbidden* from following
the usual HTML escaping conventions.]

Inline external stylesheets as `style` tags, while correctly inlining
any URLs they contain.

      for link in $('link[href][rel="stylesheet"]')
        $link = $ link
        url = $link.attr 'href'
        if css = readUrl url, 'utf8'
          fixCSS css
          $link.replaceWith "<style>#{css.contents}</style>"

Find script tags and browserify them.  If the script is external,
let Browserify read the file itself.  Otherwise, we need to pass
in a stream, not a string, and give it the directory the stream
came from (so it can resolve relative paths), but not an actual
file name.  Possibly we should be trying to synthesize a simple
source map in that case, mapping the script tag contents back to
their position in the original HTML file, but that seems kinda
tricky, and usually I'm using Jade anyway, and getting Jade to
generate a proper source map for an inlined script sounds very
tricky indeed.  For now, if you want a better source map, make your
script external, I guess?

      for script in $('script').get()
        bopts = debug: opts.debug
        $script = $ script
        if url = $script.attr 'src'
          if not entry = resolvePath(url)?.path then continue
        else
          entry = new require('stream').Readable()
          entry._read = ->
          entry.push $script.html()
          entry.push null
          bopts.entries = [entry]
          bopts.basedir = require('path').dirname inPath
        bopts.entries = [entry]
        b = require('browserify') bopts
        await b.bundle defer err, buf
        if err then fail err
        buf = buf.toString().replace /<(\/script|!--)/gi, '<\\$1'
        $script.replaceWith "<script>#{buf}</script>"

The [escaping rules for script
tags](http://www.w3.org/html/wg/drafts/html/master/semantics.html#restrictions-for-contents-of-script-elements)
are strange.  I don't want to try to replace `<script` (yet?) because
that sequence can appear outside a string literal in well-formed
Javascript.  But at least we can get the other two.

Convert the DOM back to text, convert that to a buffer, and write
it to the output file.

      text = $.html()
      file.contents = new Buffer text
      cb null, file

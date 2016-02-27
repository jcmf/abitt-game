questions = require './questions.coffee'
assert = require 'assert'

code0 = 'a'.charCodeAt 0
code0_uc = 'A'.charCodeAt 0

exports.start = ->
  stack = require('./questions.coffee')[..]
  stack.reverse()
  state = {}
  evaluate = (x) ->
    for i in [0..99]
      if 'function' != typeof x then return x
      x = x.call state
    throw new Error "too many layers: #{x}"
  generate = ->
    q = null
    while not q
      if not stack.length then return
      frame = evaluate stack.pop()
      q = evaluate frame?.q
    ai = 0
    called = false
    aa = for a in frame.aa
      result = do ->
        cur = evaluate a
        if not cur then return
        text = evaluate cur.a
        if not text then return
        codes = [code0+ai, code0_uc+ai]
        letter = String.fromCharCode codes[0]
        ai += 1
        fn = ->
          if called then throw new Error 'already called'
          called = true
          post = evaluate cur.post
          if post and post.q then stack.push post
          generate()
        {a: text, codes, letter, fn}
      if not result then continue
      result
    {q, aa}
  generate()

exports.run = (letters, cb, error) ->
  cur = exports.start()
  for letter, li in letters + '\u0000'
    if not cur then return error "end: letters=#{letters} li=#{li}"
    next = null
    for a in cur.aa
      a.selected = a.letter is letter
      if a.selected then next = a.fn
      delete a.fn
    cur.letters = letters[...li]
    cur.current = li == letters.length
    cb cur
    if cur.current then return
    if not next then return error "no match: letters=#{letters} li=#{li}"
    cur = next()
  assert false

questions = require './questions.coffee'
assert = require 'assert'

exports.run = (letters, cb, error) ->
  stack = require('./questions.coffee')[..]
  stack.reverse()
  state = {}
  run = (x) -> if 'function' is typeof x then x.call state else x
  code0 = 'a'.charCodeAt 0
  code0_uc = 'A'.charCodeAt 0
  for letter, li in letters + '\u0000'
    if not stack.length then return error "end: letters=#{letters} li=#{li}"
    frame = stack.pop()
    q = run frame.q
    if not q then continue
    ai = 0
    next = null
    aa = for a in frame.aa
      text = run a.a
      if not text then continue
      codes = [code0+ai, code0_uc+ai]
      al = String.fromCharCode codes[0]
      ai += 1
      selected = letter is al
      if selected then next = a
      {a: text, codes, selected, next, letter: String.fromCharCode codes[0]}
    current = li is letters.length
    cb {q, aa, current}
    if current then return
    if not next then return error "no match: letters=#{letters} li=#{li}"
    post = run next.post
    if post and post.q then stack.push post
  assert false

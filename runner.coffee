questions = require './questions.coffee'
assert = require 'assert'

exports.run = (letters, cb, error) ->
  stack = require('./questions.coffee')[..]
  stack.reverse()
  state = {}
  evaluate = (x) ->
    for i in [0..99]
      if 'function' != typeof x then return x
      x = x.call state
    throw new Error "too many layers: #{x}"
  code0 = 'a'.charCodeAt 0
  code0_uc = 'A'.charCodeAt 0
  for letter, li in letters + '\u0000'
    q = null
    while not q
      if not stack.length then return error "end: letters=#{letters} li=#{li}"
      frame = evaluate stack.pop()
      q = evaluate frame?.q
    ai = 0
    next = null
    aa = for a in frame.aa
      cur = evaluate a
      if not cur then continue
      text = evaluate cur.a
      if not text then continue
      codes = [code0+ai, code0_uc+ai]
      al = String.fromCharCode codes[0]
      ai += 1
      selected = letter is al
      if selected then next = cur
      {a: text, codes, selected, next, letter: String.fromCharCode codes[0]}
    current = li is letters.length
    cb {q, aa, current, letters: letters[...li]}
    if current then return
    if not next then return error "no match: letters=#{letters} li=#{li}"
    post = evaluate next.post
    if post and post.q then stack.push post
  assert false

{run} = require './runner.coffee'
fs = require 'fs'

testdir = "#{__dirname}/t"
for name in fs.readdirSync testdir
  path = "#{testdir}/#{name}"
  pieces = []
  cb = (q) ->
    pieces.push '#'
    pieces.push q.letters
    pieces.push '\n\n'
    pieces.push q.q
    pieces.push '\n\n'
    for a in q.aa
      pieces.push if a.selected then '> ' else '  '
      pieces.push a.letter
      pieces.push '. '
      pieces.push a.a
      pieces.push '\n'
    pieces.push '\n'
  run name, cb, (debug) ->
    pieces.push 'ERROR: '
    pieces.push debug
    pieces.push '\n'
  fs.writeFileSync path, pieces.join ''

{start} = require './runner.coffee'
for i in [0...1000]
  letters = []
  checkText = (text) ->
    if /undefined|\[object/.test text
      throw new Error 'suspicious text: ' + text
  cur = start()
  try
    while true
      if not cur then throw new Error 'game ended unexpectedly'
      checkText cur.q
      if not cur.aa.length then break
      for a in cur.aa
        checkText a.a
      choice = cur.aa[Math.floor Math.random() * cur.aa.length]
      letters.push choice.letter
      cur = choice.fn()
  catch e
    console.error "#!#{letters.join ''}"
    throw e

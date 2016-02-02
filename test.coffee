{run} = require './runner.coffee'
fs = require 'fs'

testdir = "#{__dirname}/test"
for name in fs.readdirSync testdir
  path = "#{testdir}/#{name}"
  pieces = []
  cb = (q) ->
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

$ = require 'jquery'
assert = require 'assert'
questions = require './questions.coffee'

notFound = (debug) ->
  console.log "404 not found: #{debug}"
  $('#404').show()
  return

showPane = (name) ->
  $targets = $("##{name}-pane")
  if not $targets.length then return notFound "pane=#{name}"
  $targets.show()

keyboard = {}

showQuestion = (letters) ->
  stack = questions[..]
  stack.reverse()
  state = {}
  run = (x) -> if 'function' is typeof x then x.call state else x
  code0 = 'a'.charCodeAt 0
  code0_altcase = 'A'.charCodeAt 0
  for letter, li in letters
    if not stack.length then return notFound "letters=#{letters} li=#{li} end"
    prev = stack.pop()
    run prev.q
    for answer in prev.aa
      run answer.a
    code = letter.charCodeAt(0) - code0
    if not 0 <= code < prev.aa.length
      return notFound "letters=#{letters} li=#{li} letter=#{letter} #{code}"
    answer = prev.aa[code]
    next = run answer.post
    if next and next.q then stack.push next
  if not stack.length then return notFound "letters=#{letters} end"
  current = stack.pop()
  hrefify = (ai) -> "#!#{letters}#{String.fromCharCode code0 + ai}"
  keyboard = {}
  for a, ai in current.aa
    keyboard[code0_altcase + ai] = hrefify ai
  for a, ai in current.aa
    keyboard[code0 + ai] = hrefify ai
  vars =
    q: run current.q
    aa: ({a: run(a.a), href: hrefify ai} for a, ai in current.aa)
  template = require './question.jade'
  html = template vars
  $container = $ '#question-container'
  $container.empty()
  $container.append html
  $('#questions').show()
  return

prevHash = null
hashchange = ->
  hash = window.location.hash.replace /^#/, ''
  if hash is prevHash then return
  prevHash = hash
  $('#loading').show()
  $('.pane').hide()
  if not hash then $('#home').show()
  else if m = /^!(.*)$/.exec hash then showQuestion m[1]
  else if m = /\/(\w+)$/.exec hash then showPane m[1]
  else notFound "hash=#{hash}"
  $('#loading').hide()
  window.scrollTo 0, 0
  return

$ ->
  $('p a[href^=http]').attr 'target', '_blank'
  $(window).on 'keypress', (e) ->
    if h = keyboard[e.which] then window.location.hash = h
    return
  $(window).on 'hashchange', hashchange
  hashchange()

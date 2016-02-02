$ = require 'jquery'
assert = require 'assert'
{run} = require './runner.coffee'

keyboard = {}

notFound = (debug) ->
  console.log "404 not found: #{debug}"
  return showPane '404', true
  return

showPane = (name, force) ->
  $targets = $("##{name}-pane")
  if not $targets.length and not force then return notFound "pane=#{name}"
  $targets.show()
  enterLink = $("##{name}-pane.enter-key a[href]").attr 'href'
  if enterLink
    keyboard[13] = enterLink
  return

showQuestion = (letters) ->
  current = null
  cb = (x) -> current = x
  run letters, cb, (debug) ->
    current = null
    notFound debug
  if not current then return
  render = (text) -> text.replace "'", '\u2019'
  current.q = render current.q
  for a in current.aa
    a.a = render a.a
    a.href = "#!#{letters}#{a.letter}"
    for code in a.codes
      keyboard[code] = a.href
  template = require './question.jade'
  html = template current
  $container = $ '#question-container'
  $container.empty()
  $container.append html
  if current.aa.length
    $('#end').hide()
  else
    $('#end').show()
    keyboard[13] = '#'
  $('#questions').show()
  return

prevHash = null
hashchange = ->
  hash = window.location.hash.replace /^#/, ''
  if hash is prevHash then return
  prevHash = hash
  keyboard = {}
  $('#loading').show()
  $('.pane').hide()
  if not hash then showPane 'home'
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

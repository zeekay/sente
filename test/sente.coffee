should = require('chai').should()
sente  = require '../'

class Renderable extends sente.Component
  observes:
    tick: ->

class WatchA extends sente.Component
  observes:
    'change:a': (value) ->

class Character extends sente.Entity
  components: [Renderable, WatchA]

describe 'Component', ->
  it 'should respond to events', ->
  it 'should be able to observe changes in an entity', ->

describe 'Entity', ->
  it 'should compose components', ->

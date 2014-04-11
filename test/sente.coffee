should  = require('chai').should()

sente = require '../'

describe 'Component', ->
  it 'should respond to events', ->
    class Renderable extends sente.Component
      observes:
        tick: ->
          # render self

  it 'should be able to observe changes in an entity', ->
    class WatchA extends sente.Component
      observes:
        'change:a': (value) ->
          # do somethign with a

describe 'Entity', ->
  it 'should compose components', ->
    class Character extends sente.Entity
      components: [Renderable, WatchA]

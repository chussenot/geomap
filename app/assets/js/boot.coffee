global = this

global.Models = {}
global.Collections = {}
global.Views = {}
global.Routers = {}

global.renderTemplate = (path, options) ->
  options ?= {}
  JST["js/templates/#{path}"] options

global.jade ?= {}
global.jade.partial = (path, options) ->
  global.renderTemplate("_#{path}", options)

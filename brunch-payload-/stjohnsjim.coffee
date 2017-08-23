###
#global Pylon
###

T=Pylon.Teact

Backbone = require 'backbone'
_= require 'underscore'

bind = (fn, me)->
  return ()->
    return fn.apply(me, arguments)
    
allPosts = Pylon.allPosts || {}

myArchives = _(allPosts).shuffle().filter (s) ->
  s.siteHandle == 'stjohnsjim'
myGroups = _(myArchives).groupBy 'category'


module.exports = class StjohnsjimLook
  widgetWrap: ->
    {attrs,contents} = T.normalizeArgs arguments
    id = attrs.id
    delete attrs.id
    title = attrs.title
    delete attrs.title
    attrs.className = "widget-wrap"
    T.div attrs , ->
      T.h3 ".widget-title", title
      T.div ".widget", contents

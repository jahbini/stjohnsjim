###
#global Pylon
###

T=Pylon.Halvalla
_=Pylon.Underscore


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
    T.div '.container.widget-wrap.p-2.my-1', attrs , ->
      T.h3 '.widget-title',  title unless !title
      T.div '.btn-group.btn-group-vertical.widget.my-2.p-2', ->contents

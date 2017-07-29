###
styling: "Lookand Feel"

###
T=require 'teacup'
ST=require 'teact'
path = require 'path'
headerLogoNav = require './header-logo-nav.coffee'
_ = require 'underscore'
bind = (fn, me)->
  return ()->
    return fn.apply(me, arguments)

sampleCategories = [
  { count: 5, name: "backstory" },
  { count: 2, name: "draft" },
  { count: 153, name: "story" },
  { count: 8, name: "tarot"}
]
widgetWrap= ->
  {attrs,contents} = T.normalizeArgs arguments
  id = attrs.id
  delete attrs.id
  title = attrs.title
  delete attrs.title
  if attrs.class?
    attrs.class+= " widget-wrap"
  else
    attrs.class = "widget-wrap"
  T.div attrs , ->
    T.h3 ".widget-title", title
    T.div ".widget", contents

groupWidgetList= T.renderable (title,categories,kind="category") ->
    console.log "Got Categories in #{title}",categories
    widgetWrap title: title, ->
        T.ul ".#{kind}-list", ->
          for name, value of categories
            T.li ".#{kind}-list-item", ->
              T.a ".#{kind}-list-link", href: "/#{kind}/#{name}/", "#{name}"
              T.span ".#{kind}-list-count", "#{value.length}"

module.exports =  T.renderable (options) ->
  console.log "Starting format for Story"
  story = options.story
  final = options.page.final
  
  gw = bind groupWidgetList, @
  widgetWrap = bind widgetWrap, @
  options = story.attributes
  longHref = story.pathToMe()
  
  console.log story
  
  console.log "Story Headlines",story.headlines
  headline = "select a headline from"+JSON.stringify story.headlines
  slug=story.slug
  published = story.published
  result = T.body "#site-body", ->
    T.div "#container", ->
      T.div "#wrap", ->
        T.raw headerLogoNav story
        T.div "#story.outer", ->
          T.section "#main", ->
              T.article "#post-#{slug}.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                T.div ".article-inner.pb2", ->
                  T.header ".article-header", ->
                    T.h1 ".article-title", itemprop: "name", "#{story.title}"
                  T.div ".article-entry", itemprop: "articleBody", ->
                    T.raw final
                  T.footer ".article-footer.hide", ->
                    T.a ".article-share-link", "data-url": longHref, "data-id": "cik30i1ai005w88ohxnylw27q", "Share"
                    T.ul ".article-tag-list", ->
                      T.li ".article-tag-list-item", ->
                        T.a ".article-tag-list-link", href: "/tags/story/", "bobo-bado story"
                T.nav "#article-nav.hide", ->
                  T.a "#article-nav-newer.article-nav-link-wrap", href: "/story/Ultimate-Protection-of-the-Geyser-Shirt-of-Bliss/", ->
                    T.strong ".article-nav-caption", "Newer"
                    T.div ".article-nav-title", " Ultimate Protection of the Geyser Shirt of Bliss "
                  T.a "#article-nav-older.article-nav-link-wrap", href: "/story/Excuse-My-Re-Use/", ->
                    T.strong ".article-nav-caption", "Older"
                    T.div ".article-nav-title", "Excuse My Re-Use!"
          T.div "#sidecar",()->
            T.div ".fb-login-button.bg-gray", height:48,
              width: 300
              'data-width': "33rem"
              'data-max-rows': "1"
              'data-size': "large"
              'data-button-type': "login_with"
              'data-show-faces': "true"
              'data-auto-logout-link': "true"
              'data-use-continue-as': "true"
            T.aside "#sidebar"
        T.footer "#footer", ->
          T.div ".outer", ->
            T.div "#footer-info.inner", ->
              T.text " © 2016 James A. Hinds"
              T.br()
              T.text " Powered by "
              T.a href: "https://github.com/jahbini/site-master", target: "_blank", "Site Master"
      T.nav "#mobile-nav", ->
        T.a ".mobile-nav-link", href: "/", "Home"
        T.a ".mobile-nav-link", href: "/archives", "Archives"
  console.log "format Stjohns jim story end. #{slug}"
  return result
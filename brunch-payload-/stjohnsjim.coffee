###
styling: "Lookand Feel"

###
{normalizeArgs,render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = T = require "teacup"
Backbone = require 'backbone'
_= require 'underscore'

bind = (fn, me)->
  return ()->
    return fn.apply(me, arguments)
jRequire = require
try
  allPosts = jRequire "generated/all-posts"
catch once
  console.log "Cant find client allPosts!"
  try
    allPosts = jRequire "../../../../app/generated/all-posts"
  catch badBoy
    console.log "cant find server allPosts"
    allPosts = {}

myArchives = _(allPosts).shuffle().filter (s) ->
  s.siteHandle == 'stjohnsjim'
myGroups = _(myArchives).groupBy 'category'

sampleCategories = [
  { count: 5, name: "backstory" },
  { count: 2, name: "draft" },
  { count: 153, name: "story" },
  { count: 8, name: "tarot"}
]
module.exports = class StjohnsjimLook
  widgetWrap: ->
    {attrs,contents} = normalizeArgs arguments
    id = attrs.id
    delete attrs.id
    title = attrs.title
    delete attrs.title
    if attrs.class?
      attrs.class+= " widget-wrap"
    else
      attrs.class = "widget-wrap"
    div attrs , ->
      h3 ".widget-title", title
      div ".widget", contents

  headerLogoNav: renderable (story)->
    header "#header", ->
      T.div "#banner.bogo", style:"background-image:url(/assets/images/banner.jpg)"
      T.div "#header-outer.outer", ->
        T.div "#header-title.inner", ->
          T.h1 "#logo-wrap", ->
            T.a "#logo", href: "/", "King St. John's Jim"
          T.h2 "#subtitle-wrap", ->
            T.a "#subtitle", href: "/", "Factisms from Cascadia's Protector --- Both a Saint AND a King."
        T.div "#header-inner.inner", ->
          T.nav "#main-nav", ->
            T.a "#main-nav-toggle.nav-icon"
            T.a ".main-nav-link", href: "/", "Home"
#          nav "#sub-nav", ->
#            a "#nav-rss-link.nav-icon", href: "/atom.xml", title: "RSS Feed"
#            a "#nav-search-btn.nav-icon", title: "Search"
#          div "#search-form-wrap", ->
#            form ".search-form", action: "//google.com/search", method: "get", "accept-charset": "UTF-8", ->
#              input ".search-form-input", type: "search", name: "q", results: 0, placeholder: "Search"
#              button ".search-form-submit", type: "submit", ""
#              input type: "hidden", name: "sitesearch", value: "http://stjohnsjim.com"
  groupWidgetList: renderable (title,categories,kind="category") ->
      console.log "Got Categories in #{title}",categories
      @widgetWrap title: title, ->
          T.ul ".#{kind}-list", ->
            for name, value of categories
              T.li ".#{kind}-list-item", ->
                T.a ".#{kind}-list-link", href: "/#{kind}/#{name}/", "#{name}"
                T.span ".#{kind}-list-count", "#{value.length}"

  formatStory: renderable (story) ->
    console.log "Starting format for Story"
    final = story.get 'final'
    if !final
      final = story.tmp.cooked
    if _.isFunction final
      final = final story
    gw = bind @groupWidgetList, @
    widgetWrap = bind @widgetWrap, @
    headMatter = @headerLogoNav story
    options = story.attributes
    longHref = story.pathToMe()
    headline = _(story.get "headlines").select(1)
    slug=story.get "slug"
    published = story.get "published"
    T.body ->
      T.div "#container", ->
        T.div "#wrap", ->
          T.raw headMatter
          T.div "#story.outer", ->
            T.section "#main", ->
                T.article "#post-#{slug}.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                  T.div ".article-inner.pb2", ->
                    T.header ".article-header", ->
                      T.h1 ".article-title", itemprop: "name", "#{options.title}"
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
            T.aside "#sidebar", ->
              gw "Categories",myGroups
              gw "Bags",sampleCategories,'tag'
              console.log "Bag end"
              widgetWrap title: "Tag Cloud", ->
                  T.a href: "/tags/backstory/", style: "font-size: 13.33px;", "backstory"
                  T.a href: "/tags/draft/", style: "font-size: 10px;", "draft"
                  T.a href: "/tags/story/", style: "font-size: 20px;", "story"
                  T.a href: "/tags/tarot/", style: "font-size: 16.67px;", "tarot"
              console.log "Tag Cloud end"
              widgetWrap title: "Archives", ->
                  T.ul ".archive-list", ->
                    T.li ".archive-list-item", ->
                      T.a ".archive-list-link", href: "/archives/2010/11/", "November 2010"
                      T.span ".archive-list-count", "30"
                    T.li ".archive-list-item", ->
                      T.a ".archive-list-link", href: "/archives/2010/10/", "October 2010"
                      T.span ".archive-list-count", "28"
              console.log "Archive Cloud end"
              widgetWrap title: "recents", ->
                  T.ul ->
                    T.li ->
                      T.a href: "/story/The-Man-Who-Walked/", "The Man Who Walked"
                    T.li ->
                      T.a href: "/story/Truck-Fight/", "Truck Fight"
              console.log "Recents Cloud end"
          footer "#footer", ->
            T.div ".outer", ->
              T.div "#footer-info.inner", ->
                T.text " © 2016 James A. Hinds"
                T.br()
                T.text " Powered by "
                T.a href: "https://github.com/jahbini/site-master", target: "_blank", "Site Master"
        T.nav "#mobile-nav", ->
          T.a ".mobile-nav-link", href: "/", "Home"
          T.a ".mobile-nav-link", href: "/archives", "Archives"
        console.log "format story end. #{slug}"

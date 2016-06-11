###
styling: "Lookand Feel"

###
{normalizeArgs,render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = require "teacup"
Backbone = require 'backbone'
_= require 'backbone/node_modules/underscore'

bind = (fn, me)->
  return ()->
    return fn.apply(me, arguments)
jRequire = require
try
  allPosts = jRequire "generated/all-posts"
catch once
  try
    allPosts = jRequire "../../../../app/generated/all-posts"
  catch badBoy
    console.log "Cant find allPosts!",once
    console.log "in stjohns jim",badBoy
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
      div "#banner"
      div "#header-outer.outer", ->
        div "#header-title.inner", ->
          h1 "#logo-wrap", ->
            a "#logo", href: "/", "St. John's Jim"
          h2 "#subtitle-wrap", ->
            a "#subtitle", href: "/", "Stories from the Far End of The Bridge to Nowhere"
        div "#header-inner.inner", ->
          nav "#main-nav", ->
            a "#main-nav-toggle.nav-icon"
            a ".main-nav-link", href: "/", "Home"
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
          ul ".#{kind}-list", ->
            for name, value of categories
              li ".#{kind}-list-item", ->
                a ".#{kind}-list-link", href: "/#{kind}/#{name}/", "#{name}"
                span ".#{kind}-list-count", "#{value.length}"

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
    body ->
      div "#container", ->
        div "#wrap", ->
          raw headMatter
          div "#story.outer", ->
            section "#main", ->
                article "#post-#{slug}.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                  div ".article-inner.pb2", ->
                    header ".article-header", ->
                      h1 ".article-title", itemprop: "name", "#{options.title}"
                    div ".article-entry.jah.with-columns", itemprop: "articleBody", ->
                      raw final
                    footer ".article-footer.hide", ->
                      a ".article-share-link", "data-url": longHref, "data-id": "cik30i1ai005w88ohxnylw27q", "Share"
                      ul ".article-tag-list", ->
                        li ".article-tag-list-item", ->
                          a ".article-tag-list-link", href: "/tags/story/", "bobo-bado story"
                  nav "#article-nav.hide", ->
                    a "#article-nav-newer.article-nav-link-wrap", href: "/story/Ultimate-Protection-of-the-Geyser-Shirt-of-Bliss/", ->
                      strong ".article-nav-caption", "Newer"
                      div ".article-nav-title", " Ultimate Protection of the Geyser Shirt of Bliss "
                    a "#article-nav-older.article-nav-link-wrap", href: "/story/Excuse-My-Re-Use/", ->
                      strong ".article-nav-caption", "Older"
                      div ".article-nav-title", "Excuse My Re-Use!"
            aside "#sidebar", ->
              gw "Categories",myGroups
              gw "Bags",sampleCategories,'tag'
              console.log "Bag end"
              widgetWrap title: "Tag Cloud", ->
                  a href: "/tags/backstory/", style: "font-size: 13.33px;", "backstory"
                  a href: "/tags/draft/", style: "font-size: 10px;", "draft"
                  a href: "/tags/story/", style: "font-size: 20px;", "story"
                  a href: "/tags/tarot/", style: "font-size: 16.67px;", "tarot"
              console.log "Tag Cloud end"
              widgetWrap title: "Archives", ->
                  ul ".archive-list", ->
                    li ".archive-list-item", ->
                      a ".archive-list-link", href: "/archives/2010/11/", "November 2010"
                      span ".archive-list-count", "30"
                    li ".archive-list-item", ->
                      a ".archive-list-link", href: "/archives/2010/10/", "October 2010"
                      span ".archive-list-count", "28"
              console.log "Archive Cloud end"
              widgetWrap title: "recents", ->
                  ul ->
                    li ->
                      a href: "/story/The-Man-Who-Walked/", "The Man Who Walked"
                    li ->
                      a href: "/story/Truck-Fight/", "Truck Fight"
              console.log "Recents Cloud end"
          footer "#footer", ->
            div ".outer", ->
              div "#footer-info.inner", ->
                text " © 2016 James A. Hinds"
                br()
                text " Powered by "
                a href: "https://github.com/jahbini/site-master", target: "_blank", "Site Master"
        nav "#mobile-nav", ->
          a ".mobile-nav-link", href: "/", "Home"
          a ".mobile-nav-link", href: "/archives", "Archives"
        console.log "format story end. #{slug}"

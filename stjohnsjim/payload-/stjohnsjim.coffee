###
styling: "Lookand Feel"

###
{render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = require "teacup"
path = require 'path'
Backbone = require 'backbone'
ClassLookAndFeel = require '../../../lib/layouts/default'

module.exports = class StjohnsjimLook extends ClassLookAndFeel
  formatStory: renderable (story) ->
    options = story.attributes
    @headMatter story
    body ->
      div "#container", ->
        div "#wrap", ->
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
                  a ".main-nav-link", href: "/archives", "Archives"
                nav "#sub-nav", ->
                  a "#nav-rss-link.nav-icon", href: "/atom.xml", title: "RSS Feed"
                  a "#nav-search-btn.nav-icon", title: "Search"
                div "#search-form-wrap", ->
                  form ".search-form", action: "//google.com/search", method: "get", "accept-charset": "UTF-8", ->
                    input ".search-form-input", type: "search", name: "q", results: 0, placeholder: "Search"
                    button ".search-form-submit", type: "submit", ""
                    input type: "hidden", name: "sitesearch", value: "http://stjohnsjim.com"
          div ".outer", ->
            section "#main.relative", ->
              div ".absolute.top-0.with-columns.p3.bg-white.left-0", ->
                article "#post-SonOfABitch-Day.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                  div ".article-meta.column-span-all", ->
                    a ".article-date", href: "/story/SonOfABitch-Day/", ->
                      time datetime: "2011-04-06T04:55:01.000Z", itemprop: "datePublished", "2011-04-06"
                    div ".article-category.column-span-all", ->
                      a ".article-category-link", href: "/categories/story/", "story"
                  div ".article-inner", ->
                    header ".article-header", ->
                      h1 ".article-title", itemprop: "name", "#{options.title}"
                    div ".article-entry", itemprop: "articleBody", ->
                      raw story.tmp.cooked
                    footer ".article-footer", ->
                      a ".article-share-link", "data-url": "http://stjohnsjim.com/story/SonOfABitch-Day/", "data-id": "cik30i1ai005w88ohxnylw27q", "Share"
                      ul ".article-tag-list", ->
                        li ".article-tag-list-item", ->
                          a ".article-tag-list-link", href: "/tags/story/", "story"
                  nav "#article-nav", ->
                    a "#article-nav-newer.article-nav-link-wrap", href: "/story/Ultimate-Protection-of-the-Geyser-Shirt-of-Bliss/", ->
                      strong ".article-nav-caption", "Newer"
                      div ".article-nav-title", " Ultimate Protection of the Geyser Shirt of Bliss "
                    a "#article-nav-older.article-nav-link-wrap", href: "/story/Excuse-My-Re-Use/", ->
                      strong ".article-nav-caption", "Older"
                      div ".article-nav-title", "Excuse My Re-Use!"
            aside "#sidebar", ->
              div ".widget-wrap", ->
                h3 ".widget-title", "Categories"
                div ".widget", ->
                  ul ".category-list", ->
                    li ".category-list-item", ->
                      a ".category-list-link", href: "/categories/backstory/", "backstory"
                      span ".category-list-count", "5"
                    li ".category-list-item", ->
                      a ".category-list-link", href: "/categories/draft/", "draft"
                      span ".category-list-count", "2"
                    li ".category-list-item", ->
                      a ".category-list-link", href: "/categories/story/", "story"
                      span ".category-list-count", "153"
                    li ".category-list-item", ->
                      a ".category-list-link", href: "/categories/tarot/", "tarot"
                      span ".category-list-count", "8"
              div ".widget-wrap", ->
                h3 ".widget-title", "Tags"
                div ".widget", ->
                  ul ".tag-list", ->
                    li ".tag-list-item", ->
                      a ".tag-list-link", href: "/tags/backstory/", "backstory"
                      span ".tag-list-count", "5"
                    li ".tag-list-item", ->
                      a ".tag-list-link", href: "/tags/draft/", "draft"
                      span ".tag-list-count", "2"
                    li ".tag-list-item", ->
                      a ".tag-list-link", href: "/tags/story/", "story"
                      span ".tag-list-count", "153"
                    li ".tag-list-item", ->
                      a ".tag-list-link", href: "/tags/tarot/", "tarot"
                      span ".tag-list-count", "8"
              div ".widget-wrap", ->
                h3 ".widget-title", "Tag Cloud"
                div ".widget.tagcloud", ->
                  a href: "/tags/backstory/", style: "font-size: 13.33px;", "backstory"
                  a href: "/tags/draft/", style: "font-size: 10px;", "draft"
                  a href: "/tags/story/", style: "font-size: 20px;", "story"
                  a href: "/tags/tarot/", style: "font-size: 16.67px;", "tarot"
              div ".widget-wrap", ->
                h3 ".widget-title", "Archives"
                div ".widget", ->
                  ul ".archive-list", ->
                    li ".archive-list-item", ->
                      a ".archive-list-link", href: "/archives/2010/11/", "November 2010"
                      span ".archive-list-count", "30"
                    li ".archive-list-item", ->
                      a ".archive-list-link", href: "/archives/2010/10/", "October 2010"
                      span ".archive-list-count", "28"
              div ".widget-wrap", ->
                h3 ".widget-title", "Recents"
                div ".widget", ->
                  ul ->
                    li ->
                      a href: "/story/The-Man-Who-Walked/", "The Man Who Walked"
                    li ->
                      a href: "/story/Truck-Fight/", "Truck Fight"
          footer "#footer", ->
            div ".outer", ->
              div "#footer-info.inner", ->
                text " © 2016 James A. Hinds"
                br()
                text " Powered by "
                a href: "http://hexo.io/", target: "_blank", "Hexo"
        nav "#mobile-nav", ->
          a ".mobile-nav-link", href: "/", "Home"
          a ".mobile-nav-link", href: "/archives", "Archives"

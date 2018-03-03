###
styling: "Lookand Feel"

###
T = require "halvalla"
_ = require 'underscore'

#console.log "T.AllOfIt is = ",T
try
  HeaderLogoNav = require '/site-server-master/public/server/header-logo-nav.coffee'
  Footer = require '/site-server-master/public/server/footer.coffee'
  console.log "Proceeding OK after header,footer require"  
catch ermsg
  console.log "header-logo-nav exploded",ermsg
  console.log "Fail in header,footer require"  
    
  
module.exports = T.bless class BodyFormatter extends T.Component
  constructor:()->
    console.log "CONSTRUCTING BODYFORMATTER"
    return
    
  view: (props)=>
    final = props.page.final
    story = props.story

    options = story.attributes
    longHref = story.pathToMe()
    
    headerOptions = _.pick props, ['navLinks','story','page']
    
    headline = "select a headline from"+JSON.stringify story.headlines
    slug=story.slug
    published = story.published
    result = T.div "#stjohnsjim-body", ->
      T.div "#container", ->
        T.div '.c-hero.o-grid__cell.u-higher', ()->
          HeaderLogoNav '#myheader', headerOptions
          T.div "#story.outer", ->
            T.div "#main", ->
                T.div "#post-#{slug}.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                  T.div ".article-inner.pb2", ->
                    T.div ".article-header", ->
                      T.h1 ".article-title", itemprop: "name", "#{story.title}"
                      T.div "#bloviation.article-entry.contents", dangerouslySetInnerHTML: __html: final
                    T.div ".article-footer.hide", ->
                      T.a ".article-share-link", "data-url": longHref, "data-id": "cik30i1ai005w88ohxnylw27q", "Share"
                      T.ul ".article-tag-list", ->
                        T.li ".article-tag-list-item", ->
                          T.a ".article-tag-list-link", href: "/tags/story/", "bobo-bado story"
              T.aside "#sidebar"
          Footer props
    console.log "format Stjohns jim story end. #{slug}"
    return result
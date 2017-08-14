###
styling: "Lookand Feel"

###
React = require 'react'
T = require "teact"

try
  HeaderLogoNav = require '/site-server-master/public/server/header-logo-nav.coffee'
  Footer = require '/site-server-master/public/server/footer.coffee'
  console.log "Proceeding OK after header,footer require"  
catch ermsg
  console.log "header-logo-nav exploded",ermsg
  console.log "Fail in header,footer require"  
    
  
module.exports = T.bless class BodyFormatter extends React.Component

  render: ()=>
    final = @props.page.final
    story = @.props.story

    options = story.attributes
    longHref = story.pathToMe()
    
    console.log story
    console.log @props.page,"@ pROPS page"
    
    console.log "Story Headlines",story.headlines
    headline = "select a headline from"+JSON.stringify story.headlines
    slug=story.slug
    published = story.published
    result = T.body "#site-body", ->
      T.div "#container", ->
        T.div "#wrap", ->
          HeaderLogoNav @props
          T.div "#story.outer", ->
            T.section "#main", ->
                T.article "#post-#{slug}.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", ->
                  T.div ".article-inner.pb2", ->
                    T.header ".article-header", ->
                      T.h1 ".article-title", itemprop: "name", "#{story.title}"
                      T.crel "Bloviation", ".article-entry.contents", dangerouslySetInnerHTML: __html: final
                    T.footer ".article-footer.hide", ->
                      T.a ".article-share-link", "data-url": longHref, "data-id": "cik30i1ai005w88ohxnylw27q", "Share"
                      T.ul ".article-tag-list", ->
                        T.li ".article-tag-list-item", ->
                          T.a ".article-tag-list-link", href: "/tags/story/", "bobo-bado story"
                 
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
          Footer @props
    console.log "format Stjohns jim story end. #{slug}"
    return result
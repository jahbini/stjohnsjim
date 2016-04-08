###
styling: "Lookand Feel"
###
{render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 hr,comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = require "teacup"
path = require 'path'
Backbone = require 'backbone'
ClassLookAndFeel = require path.resolve './lib/layouts/default'

module.exports = class BamboosnowLook extends ClassLookAndFeel

  formatStory: renderable (story) ->
    headerLogoNav = @headerLogoNav
    options = story.attributes
    debugger
    console.log @,story.template
    console.log "head", @headMatter
    @headMatter story
    comment "\nThe Body\n"
    body "#body.enclosing", ->
      div "#head", ->
        headerLogoNav story
      comment "\nThe Main template\n"
      div "#main.wrapper.mxn2.relative", "data-behavior": "1", ->
        div ".absolute.top-0.with-columns.p3.bg-white.left-0", ->
          div "#content.p2.justify", ->
            h4 options.title
            hr
            raw story.tmp.cooked
          div "#story.p2.border-left", ->
            comment "\nSidebar2"
          div "#sidebar2.p2.border-left", ->
            a href:'showit', "this is contents of sidebar"
        tag 'footer', "data-id":"footer"
        div "#cover", style:"background-image:url('/images/cover.jpg');"

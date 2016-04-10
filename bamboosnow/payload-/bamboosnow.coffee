###
styling: "Lookand Feel"
###
{render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 hr,comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = require "teacup"

headerLogoNav = require './header-logo-nav'
module.exports = class BamboosnowLook

  formatStory: renderable (story) ->
    options = story.attributes
    comment "\nThe Body\n"
    body "#body.enclosing", ->
      div "#head", ->
        headerLogoNav story
      comment "\nThe Main template\n"
      div "#main.wrapper.mxn2", "data-behavior": "1", ->
        div "#storybar.p2.border-left.right", width: "15em", ->
          raw "&nbsp;"
        div ".with-columns.p3.bg-white", width: "70%", ->
          div "#content.p2.justify", ->
            h4 options.title
            hr
            raw story.tmp.cooked || story.get "final"
          comment "\nRightbar"
          div "#rightbar.p2", ->
            a href:'showit', "this is contents of rightbar"
      tag 'footer', "data-id":"footer"
      div "#cover", style:"background-image:url('/images/cover.jpg');"

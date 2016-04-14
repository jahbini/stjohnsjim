###
styling: "skeleton"
_options:

###
{doctype,html,title,meta,base,link,script,body,header,raw,section,
 comment,i,img,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,nav,ul,li,
 tag,footer} = require "teacup"

module.exports = renderable (story) ->
  options = story.attributes
  siteHandle = story.get 'siteHandle'
  header "#header", "data-behavior":"1", ->
    i "#btn-open-sidebar.fa.fa-lg.fa-bars"
    h1 ".header-title", ->
        a ".header-title-link", href:"/ ", "Home"
    a ".header-right-picture", href:"/#about",->
      img ".header-picture",
       src:"http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
  nav '#sidebar', "data-behavior": '1', ->
    div '.sidebar-profile', ->
      a href: '/#about', ->
        img '.sidebar-profile-picture', src: 'http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=110'
      span '.sidebar-profile-name', 'James A. Hinds (Bamboo Jim)'
    ul '.sidebar-buttons', ->
      li '.sidebar-button', ->
        a '.sidebar-button-link.', href: '/', ->
          i '.sidebar-button-icon.fa fa-lg fa-home'
          span '.sidebar-button-desc', 'Home'
      li '.sidebar-button', ->
        a '.sidebar-button-link.', href: '/#about', ->
          i '.sidebar-button-icon.fa fa-lg fa-question'
          span '.sidebar-button-desc', 'About'
      li '.sidebar-button', ->
        a '.sidebar-button-link.', href: 'https://facebook.com/BambooCanDo', target: '_blank', ->
          i '.sidebar-button-icon.fa fa-lg fa-facebook'
          span '.sidebar-button-desc', 'Facebook'

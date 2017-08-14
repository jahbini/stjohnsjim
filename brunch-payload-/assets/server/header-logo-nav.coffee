###
styling: "skeleton"
_options:

###
React = require 'react'
T = require "teact"

module.exports = T.bless class HeaderLogoNav extends React.Component

  render: ()=>
    T.header "#header", ->
      T.div "#banner.bogo", style: 'background-image':'url(assets/images/banner.jpg)'
      T.div "#header-outer.outer", ->
        T.div "#header-title.inner", ->
          T.h1 "#logo-wrap", ->
            T.a "#logo", href: "/", "King St. John's Jim"
          T.h2 "#subtitle-wrap", ->
            T.a "#subtitle", href: "/", "Factisms from Cascadia's Protector --- Both a Saint AND a King."
            T.a ".header-right-picture", href:"/",->
              T.img ".header-picture",
                src: "http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
        T.div "#header-inner.inner", ->
          T.nav "#main-nav", ->
            T.a "#main-nav-toggle.nav-icon"
            T.a ".main-nav-link", href: "/", "Home"
###
styling: "skeleton"
_options:

###
T = require "halvalla"

module.exports = T.bless class HeaderLogoNav extends T.Component
    
  view: (props)=>
    T.header "#header.flex.flex-column.justify-between", ->
      T.div "#banner.bogo", style: 'background-image':'url(assets/images/banner.jpg)'
      T.div ".flex.justify-around.", ->
        T.a ".sm-hide.xs-hide.pt4.pl2.col-3.self-bottom", href:"/",->
          imageFlip = {
            '-moz-transform':'scaleX(-1)'
            '-o-transform':'scaleX(-1)'
            '-webkit-transform':'scaleX(-1)'
            'transform':'scaleX(-1)'
            'filter':'FlipH'
            '-ms-filter':'FlipH'
          }
          T.img ".circle.right",
            style: imageFlip,
            src: "http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
        T.div ".col-6.white", height:'250px', ->
          T.h1 ".center", "King St. John's Jim"
          T.h2 ".center", "Factisms from Cascadia's Protector\n --- Both a Saint AND a King."
        T.a ".pt4.pr2.col-3", href:"/",->
          T.img ".circle.left",
            src: "http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
      T.div ".flex.align-bottom",->
        T.div "#header-inner.mr-auto.px2.pb2", ->
          T.nav "#main-nav", ->
            T.a "#main-nav-toggle.nav-icon"
            T.a ".main-nav-link", href: "/", " "
        T.div "#sidecar.ml-auto.pr2.pb2",()->
          T.div ".fb-login-button.bg-gray", height:48,
            width:180 
            'data-width': "33rem"
            'data-max-rows': "1"
            'data-size': "large"
            'data-button-type': "login_with"
            'data-show-faces': "true"
            'data-auto-logout-link': "true"
            'data-use-continue-as': "true"
          T.h5 '#fb-status.white'
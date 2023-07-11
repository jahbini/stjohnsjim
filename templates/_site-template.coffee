# 
T = require 'halvalla'
#include _card.halvalla
module.exports = class siteTemplate
  #pass the db entry into the class so that the classes have access to it
  constructor: (@db,@allDB)->
    
  # 
  # section html
  # 
  html: =>
    T.doctype 'html'
    T.html =>
      T.head =>
        T.base href: "/"
        T.meta name: "author", content: "James A. Hinds: St. John's Jim -- King of Cascadia"
        T.meta "http-equiv": "Content-Type", content: "text/html", charset: "UTF-8"
        T.meta name: "viewport", content: "width=device-width, initial-scale=1"
        T.title => T.raw "Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim"
        T.meta name: "description", content: "Stories from the 'Puter of St. John's Jim"
        T.meta name: "keywords", content: "Pier Park, Cathedral Park, fiction, North Portland,St. John's, st johns"
        T.meta property: "fb:admins", content: "187314157994069"
        #include fb-script.teacup
        T.script "document.styling = {\"palx\":\"#03c\",\"black\":\"#000\",\"white\":\"#fff\"}"
        T.link rel: "apple-touch-icon", sizes: "57x57", href: "/assets/icons/apple-icon-57x57.png"
        T.link rel: "apple-touch-icon", sizes: "60x60", href: "/assets/icons/apple-icon-60x60.png"
        T.link rel: "apple-touch-icon", sizes: "72x72", href: "/assets/icons/apple-icon-72x72.png"
        T.link rel: "apple-touch-icon", sizes: "76x76", href: "/assets/icons/apple-icon-76x76.png"
        T.link rel: "apple-touch-icon", sizes: "114x114", href: "/assets/icons/apple-icon-114x114.png"
        T.link rel: "apple-touch-icon", sizes: "120x120", href: "/assets/icons/apple-icon-120x120.png"
        T.link rel: "apple-touch-icon", sizes: "144x144", href: "/assets/icons/apple-icon-144x144.png"
        T.link rel: "apple-touch-icon", sizes: "152x152", href: "/assets/icons/apple-icon-152x152.png"
        T.link rel: "apple-touch-icon", sizes: "180x180", href: "/assets/icons/apple-icon-180x180.png"
        T.link rel: "icon", type: "image/png", sizes: "192x192", href: "/assets/icons/android-icon-192x192.png"
        T.link rel: "icon", type: "image/png", sizes: "32x32", href: "/assets/icons/favicon-32x32.png"
        T.link rel: "icon", type: "image/png", sizes: "96x96", href: "/assets/icons/favicon-96x96.png"
        T.link rel: "icon", type: "image/png", sizes: "16x16", href: "/assets/icons/favicon-16x16.png"
        T.link rel: "manifest", href: "/assets/manifest.json"
        T.meta name: "msapplication-TileColor", content: "#ffffff"
        T.meta name: "msapplication-TileImage", content: "/assets/icons/ms-icon-144x144.png"
        T.meta name: "theme-color", content: "#ffffff"
        T.link rel: "stylesheet", href: "assets/css/vendor.css", "-content--encoding": "gzip"
        T.link rel: "stylesheet", href: "assets/css/app.css", "-content--encoding": "gzip"
        #T.link rel: "stylesheet", href: "app.css", "-content--encoding": "gzip"
        T.style media:"print",".hidden-print { display: none !important; }"
        T.link rel: "shortcut icon", href: "assets/icons/favicon.ico", type: "image/x-icon"
        T.link rel: "icon", href: "assets/icons/favicon.ico", type: "image/x-icon"
        T.script src: "allstories.json"
        T.script src: "mystories.json"
        T.script src: "assets/js/vendor.js", "-content--type": "text/javascript", "-content--encoding": "gzip"
        T.script src: "assets/js/app.js", "-content--type": "text/javascript", "-content--encoding": "gzip"
        T.script "siteHandle = 'stjohnsjim'; topDomain = 'stjohnsjim.com'; require('initialize');"
        @storyHeadMatter()
        
      T.body ".bg-gray", =>
        @stjohnsjim_body()
  #
  # class storyHeadMatter
  #
  storyHeadMatter: ->        
  # 
  # section stjohnsjim_body
  # 
  stjohnsjim_body: =>
    T.div "#stjohnsjim-body", =>
      @container()
  # 
  # section container
  # 
  container: =>
    T.div "#container.container-fluid", =>
      @header()
      @story()
      @footer()
  # 
  # section footer
  # 
  footer: =>
    T.div "#footer.row", =>
      T.div ".outer", =>
        @footer_info()
  # 
  # section footer_info
  # 
  footer_info: =>
    T.div "#footer-info.inner", =>
      T.raw "© 2016 James A. Hinds"
      T.br()
      T.raw "Powered by"
      T.a href: "https://github.com/jahbini/site-master", target: "_blank", => T.raw "Site Master"
  # 
  # section story
  # 
  story: =>
    T.div "#story.row", =>
      T.div ".col.col-12.col-md-9.order-first",=>
        @storyBar()
      T.div ".col.col-12.col-md-3",=>
        @sidebar()
  # 
  # section sidebar
  # 
  sidebar: =>
    T.aside "#sidebar.hidden-print.col-3"
  # 
  # section storyBar
  # 
  storyBar: =>
    headlines = @db.headlines
    headline = '---'
    if l=headlines?.length
      r = Math.floor (Math.random() * l)
      headline = headlines[r ]
    HalvallaCard "#main-ish.bg-silver",{
      shadow:"shadow"
      divider:true
      footerText: "that's all--"
      headerText: @db?.title
      subHeaderText: headline
      content: @bloviation
      }
  # 
  # section post_a_hurricane_is_brewin
  # 
  # 
  # section bloviation
  # 
  # 
  # section intruder_alert_
  # 
  # 
  # section header
  # 
  header: =>
    T.div "#header.flex.flex-column.justify-between", style: "min-height:320px; background:center 32% no-repeat url(assets/images/banner.jpg)",=>
      T.div ".flex.justify-around", =>
        T.a ".sm-hide.xs-hide.pt4.pl2.col-3.self-bottom", href: "/", =>
          T.img ".circle.right", 
            style: "-moz-transform:scaleX(-1);-o-transform:scaleX(-1);-webkit-transform:scaleX(-1);transform:scaleX(-1);filter:FlipH;-ms-filter:FlipH"
            src: "https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120"
        T.div ".col-6.white", height: "250px", =>
          T.h1 ".center", => T.raw "King St. John's Jim"
          T.h2 ".center", => T.raw """
Factisms from Cascadia's Protector
 --- Both a Saint AND a King.
"""
        T.a ".pt4.pr2.col-3", href: "/", =>
          T.img ".circle.left", src: "https://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=120"
      T.div ".flex.align-bottom", =>
        @header_inner()
        @sidecar()
  # 
  # section sidecar
  # 
  sidecar: =>
    T.div "#sidecar.ml-auto.pr2.pb2", =>
      T.div ".fb-login-button.bg-gray", width: "180", "data-width": "33rem", "data-max-rows": "1", "data-size": "large", "data-button-type": "login_with", "data-show-faces": "true", "data-auto-logout-link": "true", "data-use-continue-as": "true"
      @fb_status()
  # 
  # section fb_status
  # 
  fb_status: =>
    T.h5 "#fb-status.white"
  # 
  # section header_inner
  # 
  header_inner: =>
    T.div "#header-inner.mr-auto.px2.pb2", =>
      @main_nav()
  # 
  # section main_nav
  # 
  main_nav: =>
    T.div "#main-nav", =>
      @main_nav_toggle()
      T.a ".main-nav-link", href: "/"
  # 
  # section main_nav_toggle
  # 
  main_nav_toggle: =>
    T.a "#main-nav-toggle.nav-icon"
  # 
  # section banner
  # 
  banner: =>
  
  allMeta = [[["name","author"],["content","James A. Hinds: St. John's Jim -- King of Cascadia"]],[["http-equiv","Content-Type"],["content","text/html"],["charset","UTF-8"]],[["name","viewport"],["content","width=device-width, initial-scale=1"]],[["name","description"],["content","Stories from the 'Puter of St. John's Jim"]],[["name","keywords"],["content","Pier Park, Cathedral Park, fiction, North Portland,St. John's, st johns"]],[["property","fb:admins"],["content","187314157994069"]],[["name","msapplication-TileColor"],["content","#ffffff"]],[["name","msapplication-TileImage"],["content","/assets/icons/ms-icon-144x144.png"]],[["name","theme-color"],["content","#ffffff"]]]
  htmlTitle = "Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim"

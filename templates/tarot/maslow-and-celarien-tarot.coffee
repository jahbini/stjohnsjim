# 
class maslow_and_celarien_tarot extends stjohnsjimtemplate
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
        T.script """
// This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
//console.log('statusChangeCallback');
//console.log(response);
// The response object is returned with a status field that lets the
// app know the current login status of the person.
// Full docs on the response object can be found in the documentation
// for FB.getLoginStatus().
if (response.status === 'connected') {
  // Logged into your app and Facebook.
  testAPI();
} else {
  // The person is not logged into your app or we are unable to tell.
  document.getElementById('fb-status').innerHTML = 'Please log ' +
    'into this app.';
}
}

// This function is called when someone finishes with the Login
// Button.  See the onlogin handler attached to it in the sample
// code below.
function checkLoginState() {
FB.getLoginStatus(function(response) {
  statusChangeCallback(response);
});
}

window.fbAsyncInit = function() {
FB.init({
appId      : '187314157994069',
cookie     : true,  // enable cookies to allow the server to access 
                    // the session
xfbml      : true,  // parse social plugins on this page
version    : 'v2.8' // use graph api version 2.8
});

// Now that we've initialized the JavaScript SDK, we call 
// FB.getLoginStatus().  This function gets the state of the
// person visiting this page and can return one of three states to
// the callback you provide.  They can be:
//
// 1. Logged into your app ('connected')
// 2. Logged into Facebook, but not your app ('not_authorized')
// 3. Not logged into Facebook and can't tell if they are logged into
//    your app or not.
//
// These three cases are handled in the callback function.

FB.getLoginStatus(function(response) {
statusChangeCallback(response);
});

};

// Load the SDK asynchronously
(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = \"//connect.facebook.net/en_US/sdk.js\";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// Here we run a very simple test of the Graph API after login is
// successful.  See statusChangeCallback() for when this call is made.
function testAPI() {
//console.log('Welcome!  Fetching your information.... ');
FB.api('/me', 'get', {'fields':'first_name,gender'}, function(response) {
  //console.log('Successful login for: ', response);
  $('.FBname').text(response.first_name);
  document.getElementById('fb-status').innerHTML =
    'Thanks for logging in, ' + response.first_name + '!';
});
}
"""
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
        T.link rel: "stylesheet", href: "https://unpkg.com/blaze", "-content--encoding": "gzip"
        T.link rel: "stylesheet", href: "assets/css/app.css", "-content--encoding": "gzip"
        T.link rel: "shortcut icon", href: "assets/icons/favicon.ico", type: "image/x-icon"
        T.link rel: "icon", href: "assets/icons/favicon.ico", type: "image/x-icon"
        T.script src: "api/allstories"
        T.script src: "api/mystories"
        T.script src: "assets/js/vendor.js", "-content--type": "text/javascript", "-content--encoding": "gzip"
        T.script src: "assets/js/app.js", "-content--type": "text/javascript", "-content--encoding": "gzip"
        T.script "siteHandle = 'stjohnsjim'; topDomain = 'stjohnsjim.com'; require('initialize');"
      T.body =>
        @stjohnsjim_body()
  # 
  # section stjohnsjim_body
  # 
  stjohnsjim_body: =>
    T.div "#stjohnsjim-body", id: "stjohnsjim-body", =>
      @container()
  # 
  # section container
  # 
  container: =>
    T.div "#container", id: "container", =>
      T.div ".c-hero.o-grid__cell.u-higher", class: "c-hero o-grid__cell u-higher", =>
        @header()
        @story()
        @footer()
  # 
  # section footer
  # 
  footer: =>
    T.div "#footer", id: "footer", =>
      T.div ".outer", class: "outer", =>
        @footer_info()
  # 
  # section footer_info
  # 
  footer_info: =>
    T.div "#footer-info.inner", id: "footer-info", class: "inner", =>
      T.raw "© 2016 James A. Hinds"
      T.br()
      T.raw "Powered by"
      T.a href: "https://github.com/jahbini/site-master", target: "_blank", => T.raw "Site Master"
  # 
  # section story
  # 
  story: =>
    T.div "#story.outer", id: "story", class: "outer", =>
      @main()
      @sidebar()
  # 
  # section sidebar
  # 
  sidebar: =>
    T.aside "#sidebar", id: "sidebar"
  # 
  # section main
  # 
  main: =>
    T.div "#main", id: "main", =>
      @post_maslow_and_celarien_tarot()
  # 
  # section post_maslow_and_celarien_tarot
  # 
  post_maslow_and_celarien_tarot: =>
    T.div "#post-maslow-and-celarien-tarot.article.article-type-post", id: "post-maslow-and-celarien-tarot", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Maslow and Celarien Tarot"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/tarot/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "The Tarot is a set of 72 archetypes. There are archetypes that describe roles (e.g. High Priestess, Heirophant), situations (e.g. The tower, most of the Minor Arcana), and achievements: (e.g. the star, the sun) – (the Tarot does not address the change of situations as the I Ching does)"
      T.p => T.raw "The Tarot is often associated with fortune telling or predicting the future. Rather, it simply describes situations or relationships that will always be in your life. Drawing them in a reading will often help a client find new ways to view a personal situation."
      T.p => T.raw "A recent book addressing men’s psychological issues “King, Warrior, Magician, Lover” suggests that a man is measured by how competent he is in all of these areas. The similarity of warrior to “king of swords” and lover to “king of hearts” seemed obvious, and created a way to relate the Tarot to these same men’s issues: becoming a person that is competent as a protector, lover, magician, and provider. These correspond to the kings of the four suits: Swords for dominion and protection, Cups for human relationships, Wands for creating change and adapting to change, Pentacles for prosperity."
      T.p => T.raw "{{{SW#K:The King of Swords}}}: knows how to {{{SW#1:detect}}}, {{{SW#2:decide}}}, {{{SW#3:attack}}}, {{{SW#4:retreat and recoup}}}, knows {{{SW#5:domination or loss}}}, {{{SW#6:protection and flight}}}, {{{SW#7:the necessary use of subterfuge}}}, {{{SW#8:take hostages}}}, {{{SW#9:knows the lonliness of leadership and the power of fear}}}, {{{SW#10:victory and defeat}}}."
      T.p => T.raw "The King of Wands: knows how to adapt and create events, detect, decide, promote, harness, debate, prevail, multitask, maintain, and succomb."
      T.p => T.raw "The King of Hearts: knows self, relationships, transient pleasures, ennui, regret, memories, fantasies, discernment, lasting pleasures, family harmony."
      T.p => T.raw "{{{KP:The King of Pentacles}}}: knows opportunity, partnerships, life as worker, money management, poverty, investment, ability to nurture for future harvest, craft, personal economic security, family economic security."
      T.p => T.raw "The tarot implies that the “Emperor” is competent in all the four suits: the Emperor is a king of all suits. That’s the essence of the tarot’s message for men: you must achieve in all four domains to be the emperor of your domain."
      T.p => T.raw "Another view of the major and minor arcana fits well with Maslow’s heirarchy of needs, and separates into details the aspects of his needs."
      T.p => T.raw "Maslow’s needs (from Wikipedia)"
      T.p =>
        T.img src: "http://upload.wikimedia.org/wikipedia/commons/6/60/Maslow%27s_Hierarchy_of_Needs.svg", alt: ""
      T.p => T.raw "Tarot of Celarien based needs"
      T.p =>
        T.img src: "assets/_resampled/resizedimage536402-Celarien-Heirarchy.001.gif", alt: ""
      T.table =>
        T.raw "Celarien Tarot"
        T.tbody =>
          T.tr =>
            T.td => T.raw "Self-actualization - Major Arcana (the emperor pursues the Star, through Temperance to The Sun and beyond)"
            T.td => T.raw "Morality, creativity, spontaneity, compassion, forgiveness"
          T.tr =>
            T.td => T.raw "Esteem - Major Arcana, Cups, Pentacles, Swords, wands (self becomes the Emperor, hermit, hanged man, the moon)"
            T.td => T.raw "Confidence, respect, achievement, self forgiveness, acceptance"
          T.tr =>
            T.td => T.raw "Relationships - Cups, – Major Arcana"
            T.td => T.raw "Friends, family, sexual intimacy, relationships, patriotism, allegiences"
          T.tr =>
            T.td => T.raw "Prosperity – Pentacles – heirophant – the tower"
            T.td => T.raw "Prosperity: employment, harvest, obligations, entrepreneurial and market rewards"
          T.tr =>
            T.td => T.raw "Adaptability – Wands – “Strength” – magician"
            T.td => T.raw "Adaptability: resources, goal or value directed behavior, opportunity finding, ability to create and handle events that alter the playing field"
          T.tr =>
            T.td => T.raw "Safety – Swords – The chariot – warrior"
            T.td => T.raw "Security: set and maintain boundaries:basis for authority, sex, domination or subjugation – security of body, privacy, health, shelter, property, sphere of influence – domain of swords"
          T.tr =>
            T.td => T.raw "Physiological - Cups"
            T.td =>
              T.raw "Life Force: Breath, food, water, sleep, homeostasis, excretion, warmth – Domain of Cups – whole self equals Ace of Cups – Mana"
              T.br()
      T.table =>
        T.raw "Maslow’s Heirarchy"
        T.tbody =>
          T.tr =>
            T.td => T.raw "Self-actualization"
            T.td => T.raw "Morality, creativity, spontaneity, problem solving,lack of prejudice, acceptance of facts"
          T.tr =>
            T.td => T.raw "Esteem"
            T.td => T.raw "Self-esteem, confidence, achievement, respect of others, respect by others"
          T.tr =>
            T.td => T.raw "Relationships"
            T.td => T.raw "friendship, family, sexual intimacy"
          T.tr =>
            T.td => T.raw "Safety"
            T.td => T.raw "Security of: body, employment, resources, morality, the family, health, property"
          T.tr =>
            T.td => T.raw "Physiological"
            T.td => T.raw "Breathing, food, water, sex, sleep, homeostasis, excretion"
  # 
  # section header
  # 
  header: =>
    T.div "#header.flex.flex-column.justify-between", id: "header", class: "flex flex-column justify-between", =>
      @banner()
      T.div ".flex.justify-around", class: "flex justify-around", =>
        T.a ".sm-hide.xs-hide.pt4.pl2.col-3.self-bottom", class: "sm-hide xs-hide pt4 pl2 col-3 self-bottom", href: "/", =>
          T.img ".circle.right", class: "circle right", style: "-moz-transform:scaleX(-1);-o-transform:scaleX(-1);-webkit-transform:scaleX(-1);transform:scaleX(-1);filter:FlipH;-ms-filter:FlipH", src: "http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
        T.div ".col-6.white", class: "col-6 white", height: "250px", =>
          T.h1 ".center", class: "center", => T.raw "King St. John's Jim"
          T.h2 ".center", class: "center", => T.raw """
Factisms from Cascadia's Protector
 --- Both a Saint AND a King.
"""
        T.a ".pt4.pr2.col-3", class: "pt4 pr2 col-3", href: "/", =>
          T.img ".circle.left", class: "circle left", src: "http://www.gravatar.com/avatar/c105eda1978979dfb13059b8878ef95d?s=90"
      T.div ".flex.align-bottom", class: "flex align-bottom", =>
        @header_inner()
        @sidecar()
  # 
  # section sidecar
  # 
  sidecar: =>
    T.div "#sidecar.ml-auto.pr2.pb2", id: "sidecar", class: "ml-auto pr2 pb2", =>
      T.div ".fb-login-button.bg-gray", class: "fb-login-button bg-gray", width: "180", "data-width": "33rem", "data-max-rows": "1", "data-size": "large", "data-button-type": "login_with", "data-show-faces": "true", "data-auto-logout-link": "true", "data-use-continue-as": "true"
      @fb_status()
  # 
  # section fb_status
  # 
  fb_status: =>
    T.h5 "#fb-status.white", id: "fb-status", class: "white"
  # 
  # section header_inner
  # 
  header_inner: =>
    T.div "#header-inner.mr-auto.px2.pb2", id: "header-inner", class: "mr-auto px2 pb2", =>
      @main_nav()
  # 
  # section main_nav
  # 
  main_nav: =>
    T.div "#main-nav", id: "main-nav", =>
      @main_nav_toggle()
      T.a ".main-nav-link", class: "main-nav-link", href: "/", => T.raw ""
  # 
  # section main_nav_toggle
  # 
  main_nav_toggle: =>
    T.a "#main-nav-toggle.nav-icon", id: "main-nav-toggle", class: "nav-icon"
  # 
  # section banner
  # 
  banner: =>
    T.div "#banner.bogo", id: "banner", class: "bogo", style: "background-image:url(assets/images/banner.jpg)"
  allMeta = [[["name","author"],["content","James A. Hinds: St. John's Jim -- King of Cascadia"]],[["http-equiv","Content-Type"],["content","text/html"],["charset","UTF-8"]],[["name","viewport"],["content","width=device-width, initial-scale=1"]],[["name","description"],["content","Stories from the 'Puter of St. John's Jim"]],[["name","keywords"],["content","Pier Park, Cathedral Park, fiction, North Portland,St. John's, st johns"]],[["property","fb:admins"],["content","187314157994069"]],[["name","msapplication-TileColor"],["content","#ffffff"]],[["name","msapplication-TileImage"],["content","/assets/icons/ms-icon-144x144.png"]],[["name","theme-color"],["content","#ffffff"]]]
  htmlTitle = "Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim"
page = new maslow_and_celarien_tarot
console.log T.render page.html

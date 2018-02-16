# 
class tommy_believes_in_magic extends stjohnsjimtemplate
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
      @post_tommy_believes_in_magic()
  # 
  # section post_tommy_believes_in_magic
  # 
  post_tommy_believes_in_magic: =>
    T.div "#post-tommy-believes-in-magic.article.article-type-post", id: "post-tommy-believes-in-magic", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Tommy Believes in Magic"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/story/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p =>
        T.raw "Tommy is a master&nbsp;"
        T.a href: "http://blissblvd.com/the-tarot/the-magician-major-arcana-i/", => T.raw "magician"
        T.raw ". &nbsp;He deceives and you believe.&nbsp; And that makes it true.&nbsp; And so it isn&rsquo;t a deception.&nbsp; Until sometime later, maybe never. and then?&nbsp;"
        T.em => T.raw "Who Gives a Fuck."
      T.p =>
        T.raw "That&rsquo;s Tommy&rsquo;s Church, you know, the Church of WGAF, the official church of Tommy County, OR: they pray that way alot. It must be a Church: beliefs, tithes, sermons &mdash; Southwick has attended a lot of these sermons recently in his quest for 100% spirituality: Truly understanding the spirituality of the unspiritual, from a spiritual level, you know, not a judgmental one. &nbsp; St. John&rsquo;s Jim respects"
        T.a href: "http://allchurches.com/", => T.raw "all churches"
        T.raw "."
      T.p => T.raw "But the person who believes in magic is also easily taken in by magic.&nbsp; Especially if he thinks it is in his favor to believe &mdash; Even the simplest of tricks seduces Tommy if hits his lower chakras, the true loves in his life."
      T.p =>
        T.raw "Watch him as he mixes the &ldquo;Reality&quot; show Kool-Aid made of steroid pumped nasties of our culture, and he believes 100%. &nbsp;Shows like"
        T.em => T.raw "True Cops"
        T.raw ","
        T.em => T.raw "10,000 Rapists"
        T.raw ", and of course,"
        T.em => T.raw "Nostradomas Distracts"
        T.raw ". &nbsp;That&rsquo;s what&rsquo;s real.&nbsp; Kind of like when my cousin, at 4, said &ldquo;"
        T.a href: "http://www.youtube.com/watch?v=GYpBoYa4pno", => T.raw "Mighty Mouse"
        T.raw "is real. They even took a picture.&rdquo;&nbsp; Tommy believes like that.&nbsp; My cousin, Monty, is now 59, and he, like many back home, still believes &hellip;&nbsp; in Mighty Mouse."
      T.p => T.raw "That&rsquo;s the strength of Tommy&rsquo;s belief in the Magician.&nbsp; That&rsquo;s the strength of the Magician in Tommy."
      T.p => T.raw "Tonight Tommy is mesmerized by the claims the TV is making about an &lsquo;evil doer&rsquo; playing up lurid details just for viewer appeal.&nbsp; Slightly more true than &ldquo;True Detective&rdquo;.&nbsp; Tommy, OR is a far realer place than TV, Tommy.&nbsp; Southwick is sure the &ldquo;wisdom is out there,&rdquo; and not on TV."
      T.p => T.raw "Southwick expresses doubt in the sincerity of a supposed &ldquo;witness&rdquo;&nbsp; &mdash; Tommy jumps in to support the confabulation."
      T.p => T.raw "Southwick points to the screen and says &ldquo;most of what we see is made up.&rdquo;"
      T.p => T.raw "Tommy counters, &ldquo;but you didn&rsquo;t see all of it.&rdquo; &mdash; Southwick points to the screen and says &ldquo;most of what we see is made up.&rdquo;"
      T.p =>
        T.raw "Tommy evades and offers up more Kool-Aid, but Southwick keeps hurling his psychic power ball: Pointing to the"
        T.em => T.raw "Power-Fart Ad"
        T.raw "now showing on Tommy&rsquo;s ego sized HDTV, and saying &ldquo;most of what we see is made up&rdquo;"
      T.p =>
        T.raw "And finally Tommy acknowledges that the"
        T.a href: "http://en.wikipedia.org/wiki/Maya_(illusion)", => T.raw "layers of interpretation of reality are not real"
        T.raw ", but dumped on us by fantasy, society, culture or stupid peer pressure.&nbsp; And Tommy, in solemn prayer says, &ldquo;Yeah, Who Gives A Fuck&rdquo;"
      T.p =>
        T.raw "And"
        T.a href: "http://en.wikipedia.org/wiki/Hari_Hari", => T.raw "Hari Hari"
        T.raw "right back at you, Tommy, carry joy:&nbsp; Southwick will sleep easy tonight.&nbsp; Tommy will wake for a 5AM visit to the WGAF nunnery and return for morning service. &nbsp;Unless she accepts TommyCard, she might be disappointed. &nbsp;"
      T.p =>
        T.raw "Tommy, you are still a master"
        T.a href: "http://blissblvd.com/the-tarot/the-magician-major-arcana-i/", => T.raw "magician"
        T.raw ". As the Great Ones remind us: &nbsp;"
        T.a href: "http://www.google.com/search?rls=en&amp;q=bill++and+ted&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Be Excellent to each other, and Party On, Dudes"
        T.raw "."
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
page = new tommy_believes_in_magic
console.log T.render page.html

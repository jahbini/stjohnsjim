# 
class solitude_spiders_and_cougars extends stjohnsjimtemplate
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
      @post_solitude_spiders_and_cougars()
  # 
  # section post_solitude_spiders_and_cougars
  # 
  post_solitude_spiders_and_cougars: =>
    T.div "#post-solitude-spiders-and-cougars.article.article-type-post", id: "post-solitude-spiders-and-cougars", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Solitude, Spiders, and Cougars"
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
        T.raw "&nbsp;I&rsquo;m writing this from my alternate writing location: The &ldquo;"
        T.a href: "http://en.wikipedia.org/wiki/Fortress_of_Solitude", => T.raw "Fortress of Solitude"
        T.raw "&rdquo; &mdash; it time shares with the &ldquo;"
        T.a href: "http://www.castleofchaos.com", => T.raw "Castle of Chaos"
        T.raw ".&rdquo;"
      T.p =>
        T.raw "The Castle of Chaos is the stage of the"
        T.a href: "http://www.northendgallery.org/", => T.raw "North End Gallery"
        T.raw ".&nbsp; It is a multi-media art house with rock, art, construction, destruction in mind.&nbsp; Out of the garbage comes new culture.&nbsp; And new culture often looks like garbage to the old.&nbsp; It&rsquo;s the cycle of life folks, translated to society. &nbsp;This is ancient and wise:"
        T.em => T.raw "the way it should be,"
        T.raw "&nbsp;… I, St. John’s Jim, Have Spoken. We have plenty of raw material in St. John’s. &nbsp;I’m betting that the North End Gallery is like sex: here to stay."
      T.p => T.raw "The Fortress of Solitude part is that I&rsquo;m on the basement stage, a place of incredible focus and silence during the daylight hours."
      T.p => T.raw "Orion is upstairs: he says: &ldquo;it&rsquo;s cold outside, I wish we could get heat over the internet.&nbsp; Can technology do that with an iPhone?&rdquo;"
      T.p => T.raw "I said &ldquo;There&rsquo;s an App for the, but it runs your battery down quick&rdquo; &mdash; he and I laugh, and the office staff looks at each other like we just cut a fart."
      @spiderfest_2010()
      T.p => T.raw "The rain has made a total shambles of SpiderFest 2010.&nbsp; The extended warrantee on summer Oregon bought from India did not arrive.&nbsp; Shipping problems over the Pacific, or something so we didn&rsquo;t get our Indian Summer this year.&nbsp; That&rsquo;s the problem with outsourcing our weather!"
      T.p => T.raw "Sandy, the conneseur of odd smells behind the &ldquo;Hope for Health&rdquo; bar and grille, tells me that the Spiders have not really gone away."
      T.p => T.raw "The way Sandy put it was a bit like this:"
      T.p => T.raw "&ldquo;Well,.. Big &lsquo;uns &mdash; All black and fluttery (Sandy gets excited and starts waving his fingers in front of his face) and they come up real close and croak and everything. (He leans into me, his breath is a ninja weapon) &nbsp;One even tried to snag me with spider silk: She shot right at me!.&nbsp; Look&rdquo;"
      T.p => T.raw "I look at the spot on his pea coat: &ldquo;Sandy, that isn&rsquo;t spider silk, that&rsquo;s bird hockey.&nbsp; There aren&rsquo;t any big spiders, those are just crows..&rdquo;"
      T.p => T.raw "Sandy thanks me, His entry in the yearly Delerium Tremens is going well, and happy to have a symptom he can talk about."
      T.p => T.raw "As I go, Sandy gets agitated again, points up to a tall cedar and says: &ldquo;Look thares another!&rdquo; &mdash; I look at the tree, and high up is a crow,&nbsp; except this bird is swinging below a branch in a very un-bird-like way.&nbsp; I wipe the rain off my glasses and look again:&nbsp; It seems there is something odd about this &ldquo;crow&rdquo; &mdash; Then I remembered the arachnidillo is supposed to be really smooth.&nbsp; Kind of like a crow.&nbsp; Hmm."
      T.p => T.raw "Sandy tells me the spiders have not gone away: none of them.&nbsp; There still out and about: he has them all around him in the wee hours after &ldquo;last call&rdquo;.&nbsp; He says the rain just makes them go higher up in the big trees.&nbsp; And we do have big trees in St. John&rsquo;s.&nbsp; 140&rsquo; evergreens with trunks as big around as your kitchen stove.&nbsp; And those aren&rsquo;t the really old ones, just the 100 year old babies."
      @and_cougars()
      T.p =>
        T.raw "The way Sandy put it, these really big trees have really big spiders.&nbsp; Our 140&rsquo; cedars in Pier Park are virgin territory for the largest of these cryptozoological specimins.&nbsp; What will happen to the cougar that Southwick let loose over there.&nbsp; I&rsquo;m pretty sure she can protect herself, but what if she should take a liking to one of them?&nbsp; The last time something like that happened was"
        T.a href: "http://en.wikipedia.org/wiki/Leda_and_the_Swan", => T.raw "Leda and the Swan"
        T.raw "and that ended up in the"
        T.a href: "http://en.wikipedia.org/wiki/Helen", => T.raw "Trojan War"
        T.raw "! &nbsp; Southwick!&nbsp; What have you done!"
  # 
  # section and_cougars
  # 
  and_cougars: =>
    T.h3 "#and-cougars", id: "and-cougars", => T.raw "And Cougars"
  # 
  # section spiderfest_2010
  # 
  spiderfest_2010: =>
    T.h3 "#spiderfest-2010", id: "spiderfest-2010", => T.raw "SpiderFest 2010"
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
page = new solitude_spiders_and_cougars
console.log T.render page.html

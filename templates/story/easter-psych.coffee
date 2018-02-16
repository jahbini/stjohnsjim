# 
class easter_psych extends stjohnsjimtemplate
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
      @post_easter_psych()
  # 
  # section post_easter_psych
  # 
  post_easter_psych: =>
    T.div "#post-easter-psych.article.article-type-post", id: "post-easter-psych", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Easter... Psych!!"
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
      T.p => T.raw "Easter Weekend. &nbsp;What a bust. &nbsp;Friday and Saturday were ablaze with hope and fury. &nbsp;It seemed like Easter would be a fabulous day, and St John’s city council could be happy about our purely business decision of dumping Spring in favor of Summer."
      T.p => T.raw "I bought into the hope. &nbsp;The bunny patrol even took me to bunny mansion. &nbsp;Everything was bunnylicious."
      T.p => T.raw "Sunday: dreary Sunday–"
      T.p => T.raw "I even trimmed my beard to spruce up. A group of us were going to see the sun as it rises over a diesel locomotive. It happens every Easter in Portland. Very Special. I missed the sustainable tree-house aerial ride-share tram at 5:30 AM, though. &nbsp;The weather was hard to figure out in the dark of the morning. &nbsp;Mostly wet. &nbsp;Cold too. &nbsp;Some wind. &nbsp;I began to suspect that Summer was trying to have Winter cover his shift."
      T.p =>
        T.raw "I find Easter a confusing holiday. It scampers around the calendar like a goat. Too much like Aries. &nbsp;The local Portland custom is wet, with possible cold and wind. &nbsp;As I waited for the ride-share that never came, I thought: Cold, wet and wind is weird for&nbsp;a kama’aina like me. &nbsp;And what about weird local customs like"
        T.a href: "http://www.dailymail.co.uk/news/worldnews/article-1263100/Filipinos-nailed-crosses-whipped-Good-Friday-ritual.html", => T.raw "filipino crucifixion"
        T.raw "or"
        T.a href: "http://www.thelocal.se/article.php?ID=3525&amp;date=20060411", => T.raw "swedish witches"
        T.raw ". Or weird global customs like Easter Egg hunts."
      T.p =>
        T.raw "So what&rsquo;s this deal? Egg hunts, unlike witches or crucifixion, have nothing to do with established Religious teachings. &nbsp;Now I could go into some anti-religious rant as some others might do, but I’m not going to do that today. &nbsp;However, if you ask, I can point you to wonderful mythological similarities. &nbsp;One of my favorite writers on the subject is"
        T.a href: "http://truthbeknown.com/", => T.raw "Achyara S."
        T.raw "– a very knowledgable and thorough lady: &nbsp;I wish she had a rich grandmother I could woo."
      T.p =>
        T.raw "The truth is, that I like religions, and I want to go into a pro-religion rant. &nbsp;I think they are beautiful viral creations of humanity which give thanks for our inexplicable existence. &nbsp;All religious doctrine is"
        T.em => T.raw "totally"
        T.raw "conflicted, and not entirely holy (come on, admit it, even the best have flaws) but is entirely filled with the goal of obtaining a holy personal union with God. Now"
        T.em => T.raw "that"
        T.raw "is worthy."
      T.p => T.raw "What’s not to love? &nbsp;Maybe the Insufferable Righteousness and destruction, but as a goal, connection with a higher plane is a pretty good idea, and if mythos or ritual gets you there, showy or not, go for it."
      T.p =>
        T.raw "So how is hunting for eggs part of God&rsquo;s Plan? I dunno, I&rsquo;m confused on that point, but I think it may be a great inducement for kids at the beginning of foraging season. Foraging had it&rsquo;s big heyday in prehistoric times, but never really went completely out of fashion. Even now, you can get a Ph.D. in"
        T.a href: "http://en.wikipedia.org/wiki/Foraging", => T.raw "Optimal Foraging Theory"
        T.raw "."
      T.p => T.raw "More practically, scattering a few pretty-pretty things likely made modern, medieval, and prehistoric mommies&rsquo; lives easier by giving the kids a bit of fun to mix in with the otherwise continual work of inspecting nature for little tidbits of value. A kid that gets the most eggs might just be the kid that finds the most berries or herbs. And you don&rsquo;t have to be a genius, just patient and persistent."
      T.p => T.raw "As the dawn breaks, and I realize I’m not going to see the St. John’s Fabled Sunrise through the wheels of a locomotive, my eyes see more of the foggy ground below: &nbsp;indistinct– is that a snake or a hose? is that a foothold or a noose? &nbsp;Donald Trump’s wig or a Molotov Suppository?"
      T.p => T.raw "If the world is your oyster, you had better keep your eyes open. &nbsp;That’s the essence of foraging."
      T.p => T.raw "Let us declare together this solemn oath: ( Congregation and Pastor) Easter is the Official Start of Prosperous Days and General Goodness. &nbsp;(Pastor) Hopeful seekers: I give you Foraging Season. (Congregation): Foraging Season. (All): Easter."
      T.p => T.raw "Monday, April 25."
      T.p => T.raw "Rain. Drizzle. &nbsp;Hail. &nbsp;Winter is all over Easter’s wimpy hope and kicking some serious butt. &nbsp;I get my usual psychic bodyguard, Southwick, to do the channelling mojo."
      T.p => T.raw "Me: &quot;Oh Gracious, Celestial Spirit of the season, What has happened to our official prayer to Foraging Season? &nbsp; We made it public and everything. Woooo. Woooo.&quot;"
      T.p => T.raw "Winter: &quot;Summer’s overworked. &nbsp;He had to visit his Kids over in Cockaign. &nbsp;Anyway, I’m Winter, and you don’t cut no slack from me. &nbsp;Deal with it.&quot;"
      T.p => T.raw "Me: &quot;Hey, whassup with the hope and switch campaign? &nbsp;Are you seasons running a presidency?&quot;&nbsp;"
      T.p => T.raw "Winter: Stop it right there! &nbsp;You tried to hire Foraging! &nbsp;You can’t hire another Season! &nbsp;You went to so much trouble to fire Spring and now you try this?! I’m dumping you back into February for a while and freeze your skinny butt."
      T.p => T.raw "Me: &quot;OK, Spring, Umm. &nbsp;It seems that there is an availability for a full-time temporary position for climate delivery in St. John’s. &nbsp;You will have to supply all the resources: water, sunlight, air, etc, etc. &nbsp;The position is available immediately, but if you don’t accept now, I’ll have to give it to Foraging Season.&quot;"
      T.p => T.raw "Spring: &quot;Beg me.&quot;"
      T.p => T.raw "Me: &quot;What?!&quot;"
      T.p => T.raw "Winter: &quot;You heard her. &nbsp;Beg or suffer the consequences of eternal February.&quot;"
      T.p => T.raw "Me: &quot;OK. &nbsp;Spring, your most mercurial promises always take us by surprise. &nbsp;We are surprised when you break your promise, and we are surprised when you keep your promise. &nbsp;I St. John’s Jim, humbly beg you to return to your old job.&quot;"
      T.p => T.raw "Spring: &quot;Well, yes. &nbsp;In a couple of days. Maybe. I promise.&quot;"
      T.p =>
        T.raw "– Spring: Can’t live with it, cant live without it."
        T.br()
        T.raw "&nbsp;"
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
page = new easter_psych
console.log T.render page.html

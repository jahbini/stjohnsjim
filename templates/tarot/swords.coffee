# 
class swords extends stjohnsjimtemplate
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
      @post_swords()
  # 
  # section post_swords
  # 
  post_swords: =>
    T.div "#post-swords.article.article-type-post", id: "post-swords", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Swords"
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
      T.p => T.raw "\section{suit of swords}"
      T.p => T.raw "\paragraph{The suit of Swords is suit of the military – Stormin’ Norman. Clint Eastwood. Shifting and opportunistic loyalty. You may fight against an army one day, and fight with that same army the next. And you must be able to handle those changing loyalties. Not like the loyalty of the pentacles, who stick together and vote as one value driven block.}"
      T.p => T.raw "\subsubsection{Ace of Swords}"
      T.p => T.raw "\paragraph{A horn sounds outside the village,} a rider comes through the night. I’m here to spread the alarm. The north country has been invaded! Many have died and terror is all that remains there. We must prepare. Gather your strengths, gather your wise and your fighters. Prepare! I must go, I have told you all I can.Then he rode through the square, shouting “out of my way, Fool” and nearly knocked me over.Inverted. The warning may have come too late to help."
      T.p => T.raw "\subsubsection{Two of Swords}"
      T.p => T.raw "\paragraph{The enemy to the north} is nearly unknown to us. Our king has summoned a secret meeting of elders. It does not go well. Our challenge is great, and our options are few. Now, this moment, is the time for our elders to take one last hour in counsel, and then we must commit all our efforts behind their decision. Shall we go forward, or retreat?"
      T.p => T.raw "\subsubsection{Three of Swords}"
      T.p => T.raw "\paragraph{Our first encounter} with the Northerners was devastating. The northerners are invincible in battle. We have sustained heavy losses already.This may be a temporary setback, we hope that we will prevail."
      T.p => T.raw "\subsubsection{Four of Swords}"
      T.p => T.raw "\paragraph{Our best fighters} have fallen in battle. Even in the midst of conflict we must honor the price that each has paid, and the losses we have endured. We gather around a small family service. The son has died from his wounds, and is now laid in his full battle dress for his journey to his fighters reward as the heirophant has promised.May his death be worthy, and our future bright.Inverted. An unworthy death."
      T.p => T.raw "\subsubsection{Five of Swords}"
      T.p => T.raw "\paragraph{We have been overcome,} their fighters roam freely in the streets. They easily defeat us on their terms. The grow strong as we grow weak. This is a dark hour."
      T.p => T.raw "\subsubsection{Six of Swords}"
      T.p => T.raw "\paragraph{We salvage what we can of our former lives.} Our women and children are sent to safety across the sea. We must become invisible to our enemies."
      T.p => T.raw "\subsubsection{Seven of Swords}"
      T.p => T.raw "\paragraph{By guile we have been learning the ways and weaknesses} of the northerners. We have found ways to sap their strength and blunt their weapons. We work in the dark and in secret. We must not be discovered."
      T.p => T.raw "\subsubsection{ Eight of Swords}"
      T.p => T.raw "\paragraph{We have taken the northern’s most prized possession.} She is our hostage. The enemy must listen to us now."
      T.p => T.raw "\subsubsection{Nine of Swords}"
      T.p => T.raw "\paragraph{The norther king does not sleep.} His mind is confused. He lacks the will for battle. He has lost his drive, and terror in the night is his only friend.Our enemy is only as strong as it’s will to prevail."
      T.p => T.raw "\subsubsection{Ten of Swords}"
      T.p => T.raw "\paragraph{We have defeated the norther hordes.} Their fighters have fallen not to our strength, but our will to exist."
      T.p => T.raw "\subsubsection{Page of Swords}"
      T.p => T.raw "A young girl with huge curiosity, she peeks into every drawer, and looks into every purse. Here you see her eavesdropping at the confessional."
      T.p => T.raw "\subsubsection{Knight of Swords}"
      T.p => T.raw "Whether it is with armor, sword, or garrote, Alexander “Ax” Blade is the guy who will get the job done.\subsubsection{Queen of Swords}"
      T.p => T.raw "The queen is in charge of logistics, resupply, and maintenance. She is chief counselor on planning and strategies."
      T.p => T.raw "\subsubsection{King of Swords}"
      T.p => T.raw "\paragraph{The most experienced} in the real needs of war. Shifting loyalties, shifting strategies. Public displays and private deals. The sacred space for him exists because he can and will defend it. For no other reason. Anything more, cups, wands, pentacles, is all well and good, but can and will be sacrificed if necessary."
      T.p => T.raw "The suit of Swords is suit of the military – Stormin’ Norman. Clint Eastwood. Shifting and opportunistic loyalty. You may fight against an army one day, and fight with that same army the next. And you must be able to handle those changing loyalties."
      @ace_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "A horn sounds outside the village"
        T.raw ", a rider comes through the night. I’m here to spread the alarm. The north country has been invaded! Many have died and terror is all that remains there. We must prepare. Gather your strengths, gather your wise and your fighters. Prepare! I must go, I have told you all I can.Then he rode through the square, shouting “out of my way, Fool” and nearly knocked me over.Inverted. The warning may have come too late to help."
      @two_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "The enemy to the north"
        T.raw "is nearly unknown to us. Our king has summoned a secret meeting of elders. It does not go well. Our challenge is great, and our options are few. Now, this moment, is the time for our elders to take one last hour in counsel, and then we must commit all our efforts behind their decision. Shall we go forward, or retreat?"
      @three_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "Our first encounter"
        T.raw "with the Northerners was devastating. The northerners are invincible in battle. We have sustained heavy losses already. This may be a temporary setback, we hope that we will prevail."
      @four_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "Our best fighters"
        T.raw "have fallen in battle. Even in the midst of conflict we must honor the price that each has paid, and the losses we have endured. Many are wounded and our only opportunity is retreat and recuperation. Our doctors are tending them as best we can. We gather around a small family service. The son has died from his wounds, and is now laid in his full battle dress for his journey to his fighters reward as the heirophant has promised. May his death be worthy, our recovery rapid and our future bright. Inverted. An unworthy loss."
      @five_of_swords()
      T.p => T.raw "We have been overcome, their fighters roam freely in the streets. They easily defeat us on their terms. The grow strong as we grow weak. This is a dark hour."
      @six_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "We salvage what we can of our former lives."
        T.raw "Our women and children are sent to safety across the sea. We must become invisible to our enemies."
      @seven_of_swords()
      T.p =>
        T.strong =>
          T.em => T.raw "By guile we have been learning the ways and weaknesses"
        T.raw "of the northerners. We have found ways to sap their strength and blunt their weapons. We work in the dark and in secret. We must not be discovered."
      @eight_of_swords()
      T.p =>
        T.strong =>
          T.em => T.raw "We have taken the norther’s most prized possession."
        T.raw "She is our hostage. The enemy must listen to us now."
      @nine_of_swords()
      T.p =>
        T.strong =>
          T.em => T.raw "The norther king does not sleep"
        T.raw ". His mind is confused. He lacks the will for battle. He has lost his drive, and terror in the night is his only friend. Our enemy is only as strong as it’s will to prevail."
      @ten_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "We have defeated the norther hordes."
        T.raw "Their fighters have fallen not to our strength, but our will to exist."
      @page_of_swords()
      T.p =>
        T.strong =>
          T.em => T.raw "The informer"
        T.raw ": A young girl with huge curiosity, she peeks into every drawer, and looks into every purse. Here you see her eavesdropping at the confessional. She looks and reports on any weakness for her king, but misleads any enemy."
      @knight_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "The soldier"
        T.raw "– Whether it is with armor, sword, or garrote, Alexander “Ax” Blade is the guy who will get the job done."
      @queen_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "The Kingdom"
        T.raw "– the fruits of conquest and the resources to continue. The queen is in charge of logistics, resupply, and maintenance. She is chief counselor on planning and strategies."
      @king_of_swords()
      T.p =>
        T.em =>
          T.strong => T.raw "The most experienced"
        T.raw "in the realities of war. Shifting loyalties, shifting strategies. Public displays and private deals. The sacred space for him exists because he can and will defend it. For no other reason. Anything more, cups, wands, pentacles, is all well and good, but can and will be sacrificed if necessary."
  # 
  # section king_of_swords
  # 
  king_of_swords: =>
    T.h2 "#king-of-swords", id: "king-of-swords", => T.raw "King of Swords"
  # 
  # section queen_of_swords
  # 
  queen_of_swords: =>
    T.h2 "#queen-of-swords", id: "queen-of-swords", => T.raw "Queen of Swords"
  # 
  # section knight_of_swords
  # 
  knight_of_swords: =>
    T.h2 "#knight-of-swords", id: "knight-of-swords", => T.raw "Knight of Swords"
  # 
  # section page_of_swords
  # 
  page_of_swords: =>
    T.h2 "#page-of-swords", id: "page-of-swords", => T.raw "Page of Swords"
  # 
  # section ten_of_swords
  # 
  ten_of_swords: =>
    T.h2 "#ten-of-swords", id: "ten-of-swords", => T.raw "Ten of Swords"
  # 
  # section nine_of_swords
  # 
  nine_of_swords: =>
    T.h2 "#nine-of-swords", id: "nine-of-swords", => T.raw "Nine of Swords"
  # 
  # section eight_of_swords
  # 
  eight_of_swords: =>
    T.h2 "#eight-of-swords", id: "eight-of-swords", => T.raw "Eight of Swords"
  # 
  # section seven_of_swords
  # 
  seven_of_swords: =>
    T.h2 "#seven-of-swords", id: "seven-of-swords", => T.raw "Seven of Swords"
  # 
  # section six_of_swords
  # 
  six_of_swords: =>
    T.h2 "#six-of-swords", id: "six-of-swords", => T.raw "Six of Swords"
  # 
  # section five_of_swords
  # 
  five_of_swords: =>
    T.h2 "#five-of-swords", id: "five-of-swords", => T.raw "Five of Swords"
  # 
  # section four_of_swords
  # 
  four_of_swords: =>
    T.h2 "#four-of-swords", id: "four-of-swords", => T.raw "Four of Swords"
  # 
  # section three_of_swords
  # 
  three_of_swords: =>
    T.h2 "#three-of-swords", id: "three-of-swords", => T.raw "Three of Swords"
  # 
  # section two_of_swords
  # 
  two_of_swords: =>
    T.h2 "#two-of-swords", id: "two-of-swords", => T.raw "Two of Swords"
  # 
  # section ace_of_swords
  # 
  ace_of_swords: =>
    T.h2 "#ace-of-swords", id: "ace-of-swords", => T.raw "Ace of Swords"
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
page = new swords
console.log T.render page.html

# 
class leo_and_stations_healing extends stjohnsjimtemplate
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
      @post_leo_and_stations_healing()
  # 
  # section post_leo_and_stations_healing
  # 
  post_leo_and_stations_healing: =>
    T.div "#post-leo-and-stations-healing.article.article-type-post", id: "post-leo-and-stations-healing", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Leo and Station's healing"
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
      T.p => T.raw "June 12, 2099. St John’s. &nbsp;Portland, Oregon. &nbsp;Where the Columbia and the Willamette and the Summer and Spring come together. &nbsp;And get restraining orders."
      T.p => T.raw "The San Francisco morning will soon change into a Death Valley afternoon by way of the Donner party’s Winter all join together here in St. John&rsquo;s. Perfectly normal. &nbsp;SSDD. Same Shit, Different Day."
      T.p => T.raw "What IS different, is that I have not been really free to talk about Leo and Station for quite some while. &nbsp;Leo is the defrocked pope of the internet and Station is his estranged Pacific Island companion."
      T.p => T.raw "Everybody seems to know them, and I don’t want to let any private lives creep into my fiction. &nbsp;After all, it is fiction. &nbsp;But the wisdom of fiction overrides mere facts, sometimes. &nbsp;That’s why fiction has never been outlawed. &nbsp;Maybe."
      T.p => T.raw "– Today, Leo and Station are in the back yard with Pathy Daough. Pathy is pointing to the remains of a seed pod. &ldquo;And it even ate my habanero! I think it’s a slug! Uggh.&rdquo;"
      T.p =>
        T.raw "Station says: &ldquo;In my culture, anything that can transmute the habanero is highly prized. We call it"
        T.em => T.raw "Mana-Bo-Banana-Fana-Mana"
        T.raw ". It is very rare to hold and concentrate the habanero energy. Imagine the Chi-overflow protection system. It must hold the plant-energy of the habanero so that it can be released in chakras of amazing Baboo!&rdquo;"
      T.p => T.raw "Leo looks at Station and says: &ldquo;Baboo? Like we used to have?&rdquo; Station looks at Leo and their eyes soften a bit. In a flash, Station is combing the underleaves like his tropic ancestors."
      T.p => T.raw "Pathy looks startled as Station holds out his prize to her. He says: &ldquo;Pathy, here it is.&rdquo; It starts oozing up his wrist."
      T.p => T.raw "Pathy look at it with disgust, &ldquo;Slugs, ugh, get rid of it.&rdquo; Leo shoots a glance to Station and flares his nostrils like Kirk Douglas in a ‘50s flick. Station shoots a look back like Victor Mature and becomes kittenish. &nbsp;They lock hands and walk up the path to their house: &quot;Thank you, Pathy: You have no idea the gift you have found.&quot;"
      T.p => T.raw "Leo and Station are suddenly very chatty as they quickly walk back to their home. Halfway there, Leo slid the thing off of Station&rsquo;s shoulder onto his hand. They disappear into their house."
      T.p => T.raw "A few hours later, Leo and Station are talking. This is such a relief , compared to the odd distanced looks they had been exchanging for the last few months. Evidently Leo&rsquo;s fall from the high wire of internet espionage had been devastating to both of them."
      T.p => T.raw "This very afternoon, Leo sets up a meeting with Pathy and her sister, Winnie. &nbsp;It seems that after an incredible sexual healing session, Leo and Station decided they had hit a gold mine. They even contacted the Bogo-Exhaulted Shaw-Himani of The Colony-Rapee of Qumquat and found that Pathy had the real goods."
      T.p => T.raw "Leo called a meeting and all are huddled around Pathy&rsquo;s table sipping Magic Monkey tea: &ldquo;So Station and I can breed these things in our basement, and Pathy, you grow as many peppers that you can. Winnie, you set up the production line, OK? We feed the nasties with Pathy&rsquo;s peppers, harvest, freeze dry using Winnie&rsquo;s &ldquo;Cold Shoulder&rdquo; method, then pulverize them using Station’s silat martial arts. We figure that an ounce will be worth $10,000.00 for the geriatric set. We can say it puts the boom back into the boomer generation.&rdquo;"
      T.p => T.raw "Everyone around the table cracks up. &nbsp;And so a new health care market opens, drawing all the usual suspects."
      T.p => T.raw "In addition, Leo and Station&rsquo;s have found a profitable business on Cragslisp with their new Web Video Sex Wrestling Seminars:"
      T.p => T.raw "Partners are only asked one question: &ldquo;Will you let your partner, at this time, give you the ultimate pleasure of the body &mdash; the detachment and beyond?&rdquo; As they affirm, they are admitted to the seminar."
      T.p =>
        T.raw "Here are the guidelines for level 1 certification, Marquis of Celarien Rules &mdash;"
        T.br()
        T.raw "The goal of level 1 is to be able to get the partner to &ldquo;detachment&rdquo; which is identified as to have uncontrollable breathing, moans, and shouts of &ldquo;Yes, yes, God YeS!&rdquo; &mdash; Some Marines have been known to shout &ldquo;More P.T. Sargent!&rdquo; at this moment. Please calibrate for your partner."
      T.p =>
        T.raw "Sex-wrestling Guidelines."
        T.br()
        T.raw "0) Safety in all aspects."
        T.br()
        T.raw "1) Safe words are simple, easily pronounceable and totally honored."
        T.br()
        T.raw "2) no genital-oral contact of more than .5 second, breast and anus included for the first 3 rounds."
        T.br()
        T.raw "3) only one knuckle insertion allowed during the first four rounds."
        T.br()
        T.raw "4) When a partner is able to get the other aroused to the point of detachment, a point is scored."
      T.p => T.raw "On a flip of the coin, one side is designated &ldquo;inside&rdquo; and has hands free to access all the secret places of the outside partner&rsquo;s body. The outside is free to access a more limited range but may block or deflect or direct the inside partner to extend or direct the play as desired. The inside&rsquo;s goal is to get the partner to detachment, and the roles are reversed."
      T.p => T.raw "At any time, the outside may call &ldquo;School&rdquo; and the outside has thirty seconds to &ldquo;Take You To School&mdash; and show exactly how good boys or girls can learn how to please.&rdquo;"
      T.p => T.raw "Ratings are for number of role reversals before passion tears the rules to shreds. Young couples in excellent health can do 4 turn arounds in a minute. At the end of the heat, In professional tournament play, the couple is then sprayed with CO2 from an extinguisher. In private play, let your conscience be your guide."
      T.p => T.raw "&mdash; Hey, kids, don&rsquo;t hold me responsible for any mollusca-banero snacks you come across! It is all Leo&rsquo;s and Station&rsquo;s idea. &nbsp;If it’s slimey, it belongs to The Grouch."
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
page = new leo_and_stations_healing
console.log T.render page.html

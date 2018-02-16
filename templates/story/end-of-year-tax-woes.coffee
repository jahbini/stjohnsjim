# 
class end_of_year_tax_woes extends stjohnsjimtemplate
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
      @post_end_of_year_tax_woes()
  # 
  # section post_end_of_year_tax_woes
  # 
  post_end_of_year_tax_woes: =>
    T.div "#post-end-of-year-tax-woes.article.article-type-post", id: "post-end-of-year-tax-woes", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "End of Year Tax Woes?"
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
      T.p => T.raw "The last day of the year may be the last day to play limbo-limbo with the Tax people. This is what happened to Southwick."
      T.p =>
        T.raw "Southwick got handed a Lottery Ticket the other day. If it wins Southwick says he will be able to buy the whole state of Delaware, and is very nervous about the tax consequences. He found that the time to apply for"
        T.a href: "http://www.google.com/search?rls=en&amp;q=wells+%22rich+and+famous+contract%22&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Abc-12-C"
        T.raw "status expired, and he needs to re-apply with a 2902 form"
      T.p =>
        T.em =>
          T.blockquote ".right.key-author.right-align.h6.p2.bg-white.bg-darken-1.border.rounded", class: "right key-author right-align h6 p2 bg-white bg-darken-1 border rounded", => T.raw "Somehow, believe it or not, Soto and Voce got comment privileges on this thread. Beats me, I’m trying to get the admin password back on this e-mail list, and I’m not sure I’m the one writing everything. A computer virus? Could be."
      T.p => T.raw "Southwick: “I was late in supplying the information, and I want to have my future winnings covered retro-actively”"
      T.p =>
        T.raw "Telephone: “Can that make sense?”"
        T.em =>
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: What does he mean? – Can he do that? … I had my previous losses rolled over into the future."
          T.raw "__"
          T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Rolled over? Does that mean you are always going to be a loser?"
      T.p => T.raw "Southwick: “Most likely not, but if it could, then I need to file a 2902 form. You see, I was getting a MA in Yoo-Hoo Koo-Koo from Sewage Newage University.”"
      T.p => T.raw "Telephone: “Yes, in that case you will need the statements of your advisors.”"
      T.p =>
        T.em =>
          T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: I once studied under a Yee-Haa Koo-Koo master."
          T.raw "__"
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: My Yoo-Hoo Koo-Koo is better than your Yee-Haa Koo-Koo."
      T.p =>
        T.raw "Southwick: “Well, that’s kind of the problem. My advisory committee is"
        T.a href: "http://www.drstandley.com/angels_jehoel.shtml", => T.raw "Jehoel"
        T.raw ","
        T.a href: "http://en.wikipedia.org/wiki/Harut_and_Marut", => T.raw "Harut"
        T.raw ","
        T.a href: "http://en.wikipedia.org/wiki/First_Book_of_Nephi", => T.raw "Nephi"
        T.raw ", and"
        T.a href: "http://en.wikipedia.org/wiki/Barachiel", => T.raw "Barachiel"
        T.raw ".”"
      T.p => T.raw "Telephone: “No problem, just have them give their statements, sign the forms, and the committee will re-evaluate your Abc-12-C status retroactive to the Civil War.”"
      T.p => T.raw "Southwick: “Well, these are angels, you know, and don’t have physical bodies, and so they don’t have, like real signatures.”"
      T.p => T.raw "Telephone: “no bodies? How can they be on a committee?”"
      T.p => T.raw "Southwick: “Well, I got authority from good old Newage Sewage U. to channel these angels and publish my dissertation with their input and acceptance.”"
      T.p => T.raw "Telephone:”Gack. Cough. Please Hold…"
      T.blockquote =>
        T.p => T.raw "… … … (your call is important to us)… … … … … (Pay your taxes early and smile!) … … … (your call is important to us: Please stay on the line or we will send an audit agent over.)… … … … …"
      T.p =>
        T.em =>
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", =>
            T.raw "soto says: How can you get put on"
            T.strong => T.raw "hold"
            T.raw "in an e-mail?"
          T.raw "__"
          T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: I’m glad I have wi-fi for the refrigerator. When I’m on hold, I’m already there!"
      T.p => T.raw "Telephone:” Hello? Hello?”"
      T.p => T.raw "Southwick: “Zzz… Huh!? Yes.”"
      T.p => T.raw "Telephone: “My supervisor says that channeled beings have channelled signatures, Can you get that?”"
      T.p => T.raw "Southwick: “You mean, If I can channel them, I also can channel their signatures? Just like I did on my dissertation?”"
      T.p => T.raw "Telephone: “Exactly. The rule clearly states that a non-physical being MUST become physical, however briefly, to refudiate a channelled signature. Any signature marked “channelled” with the channellers signature and date is as legal as any of the channeller’s signature.”"
      T.p =>
        T.em =>
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Isn’t channelling a signature forgery?"
          T.strong =>
            T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Technically? Yes. A smart lawyer could likely come up with some stuff about a corporate officer “channeling” the corporate seal. Same thing, really. But don’t try it in the real world."
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: IRL?! Never been there myself."
      T.p => T.raw "Southwick: “Thanks, I’ll just create my own form, and channel these signatures and mail it off.”"
      T.p => T.raw "Telephone: “Is there anything more I can help you with so you can pay your taxes early and smile?!”"
      T.p =>
        T.em =>
          T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Does the bear wear a funny hat?"
      T.p => T.raw "In the real world, you might not get this good of service from your next “Specialist,” In my finer moments, I don’t hold it against them."
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
page = new end_of_year_tax_woes
console.log T.render page.html

# 
class basements_and_foundations_ya_think extends stjohnsjimtemplate
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
      @post_basements_and_foundations_ya_think()
  # 
  # section post_basements_and_foundations_ya_think
  # 
  post_basements_and_foundations_ya_think: =>
    T.div "#post-basements-and-foundations-ya-think.article.article-type-post", id: "post-basements-and-foundations-ya-think", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Basements and Foundations, Ya Think?"
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
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", Stop The Presses!"
      T.p =>
        T.em =>
          T.strong => T.raw "Big Rain! Now! Portland!"
      T.p =>
        T.raw "Well, that’s nothing to stop the presses about; except if the"
        T.a href: "http://www.ohs.org/education/oregonhistory/historical_records/dspDocument.cfm?doc_ID=000C54BA-31CA-1E8B-891B80B0527200A7", => T.raw "river rises"
        T.raw "and really stops the presses. That’s happened before in Portland, you know. We have"
        T.a href: "http://kaga.wsulibs.wsu.edu/cdm-cchm_photo/results.php?CISOOP1=any&amp;CISOFIELD1=title&amp;CISOROOT=/cchm_photo&amp;CISOBOX1=Vanport", => T.raw "lost whole town"
        T.raw "s to the raging rivers here. (It’s the Katrina of the 1940’s – The President wanted to suppress the “Vanport Sound” which was considered subversive. President Latrine said: “We never figured that the river might rise!” Vanport CouverLand, a musician at the time, said: “He don’t care about worker-folk”)"
      T.p => T.raw "Thankfully, this December we are only leaking in our basements, and not losing whole towns. That is, if you can be thankful for a leaky basement. (Hosannas! We have leaky Basements!)"
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", the tale-spinners over at Slim’s Storybook Theatre tell of economic water torture! Some of the over 70 set use diapers on their basements, and just live with it. Others, with real basements have sump pumps or even indoor swimming. Some have real problems with the basement walls, up to and including the dreaded Jericho Syndrome. A cave-in could spoil your whole happy hour."
      T.p => T.raw "Over on St. John’s Malibu, the bluff on our side of the Willamette, the problem is foundations. Some resort to pilings, some have french drains, and some might just go sliding into the river. Could be a new sport. House rafting."
      @let_s_join_the_three_wise_men_over_at_3_gunas_loop()
      T.p => T.raw "Roger, the PhD in preventative maintenance, said: “Water. It can attack your foundations. It’s persistent. When you live in Portland, you want to keep looking at your most basic things. Foundation, Roof, Walls.”"
      T.p => T.raw "Tommy the mouthpiece, had a slightly different view. “Ah, screw it. My house is insured and I’d love to collect.”"
      T.p => T.raw "Southwick, always looking out for himself, said: “If the house goes kaput, you might get your money, but all three of us lose the house, and we’ll be out in the rain.”"
      T.p => T.raw "Tommy and Roger both have fall back plans in case the house caves in."
      T.p => T.raw "Roger says, “No biggy, I’m off to Florence.” Roger has a winter chalet on the Oregon Coast where he can go sand-dune surfing to his heart’s content."
      T.p =>
        T.raw "Tommy says: “I’ll just open more bed-and-breakfast suites at the local storage locker-plex near the food carts. See, Southwick, you are always just thinking of yourself.”"
        T.blockquote ".right.key-sms.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Even Heroin Hookers have ideas of romance"
        T.blockquote ".right.key-sms.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms voce right-align h6 p2 bg-white border rounded", => T.raw "voce says:  “Tommy is so sweet.”"
      T.p => T.raw "Roger says: “No sweat, Southwick, if you don’t have a backup plan, reality will provide one for you.”"
      T.p =>
        T.raw "Southwick says: “Right! Sandy is St. John’s franchisee for Ulysses’ 4 Hour Begging Week. I’m off to the Hope for Health to see how that works.”"
        T.blockquote ".right.key-sms.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Ha, 120 hour mo’ betta’!"
        T.blockquote ".right.key-sms.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Simple Southwick! LOLZ."
      T.p =>
        T.raw "An amazing thing happened. The rain stopped for 3 days and 3 nights (in Portland during the winter, that’s"
        T.em => T.raw "Biblical"
        T.raw "!) and Southwick sent out a Ladybug and it returned with mud on its feet. Or maybe another Ladybug completely. They all look alike, and they don’t seem to know their own names.)"
      T.p => T.raw "Southwick took that as a sign — “Tommy, the basement’s still wet. Maybe you better check that leaky plumbing.”"
      T.p => T.raw "Tommy replied: “Ummm. Yeah. Insurance won’t pay for that.”"
      T.p => T.raw "Roger said: “Yeah, simple things, just below the surface. Fix ‘em first. Check ‘em always.”"
      T.p => T.raw "Southwick chimed in with Roger’s signature line: “Ya think?”"
      T.blockquote =>
        T.p => T.raw "And then he added, cryptically: “As above, so below”"
  # 
  # section let_s_join_the_three_wise_men_over_at_3_gunas_loop
  # 
  let_s_join_the_three_wise_men_over_at_3_gunas_loop: =>
    T.h3 "#let-s-join-the-three-wise-men-over-at-3-gunas-loop", id: "let-s-join-the-three-wise-men-over-at-3-gunas-loop", => T.raw "Let’s join the Three Wise Men over at 3 Gunas Loop"
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
page = new basements_and_foundations_ya_think
console.log T.render page.html

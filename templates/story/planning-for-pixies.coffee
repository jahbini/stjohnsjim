# 
class planning_for_pixies extends stjohnsjimtemplate
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
      @post_planning_for_pixies()
  # 
  # section post_planning_for_pixies
  # 
  post_planning_for_pixies: =>
    T.div "#post-planning-for-pixies.article.article-type-post", id: "post-planning-for-pixies", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Planning for Pixies."
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
        T.raw "Hooray!"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ". I have finally broken through a culture wall in Oregon! There are several sub-cultures that co-exist in St. John’s, and I want to speak to, and speak about all of St. John’s culture groups. You know, it’s that bridge thing. I would love to add St. John’s large latino population, but alas, I speak little spanish, and even less mariachi."
      T.blockquote =>
        T.p =>
          T.raw "No, I mean the Pixie Population! The magical ones. Pier Park is full of pixies, their meetings at odd hours: the ring of mushrooms is living proof of their meetings, and their buzz often fills the afternoon air. Their meetings create fabulous"
          T.a href: "http://www.google.com/imgres?imgurl=http://www.karinenglish.com/wp-content/uploads/2010/02/sand-mandala.jpg&amp;imgrefurl=http://www.karinenglish.com/%3Fm%3D201002&amp;h=450&amp;w=600&amp;sz=120&amp;tbnid=o4rkmlCy0S3HjM:&amp;tbnh=101&amp;tbnw=135&amp;prev=/images%3Fq%3Dsand%2Bmandala&amp;zoom=1&amp;q=sand+mandala&amp;usg=__Wjo8SPnSP4qUa2ZkFQASIxL1YD4=&amp;sa=X&amp;ei=GHwFTcztEZPWtQOuzaCaDQ&amp;ved=0CCYQ9QEwAg", => T.raw "&gt; buddhist sand mandalas"
          T.raw "&gt;  of chaos that are meant to be swept away. Pixies love Twitter."
      T.p => T.raw "You see, this very day, I woke up to runners in the street. I don’t drive, so it doesn’t bother me, but they had about a half mile fronting Pier Park roped off. A Half Jogette. The Police attended the final moments of the race: the finish was signaled by flashing lights as the cops picked up the cones blocking the street, instead of cheers at the finish line."
      T.p => T.raw "The St. John’s definition of “Half Joggette” seems to have been Half Prepared — no permit."
      T.p => T.raw "I can imagine the last meeting called by ToadStoolPixie and StoolSecretary Pic and Zee: We arrive in the middle of the ring of mushrooms as soto and voce are texting in front of us."
      T.blockquote =>
        T.blockquote ".right.key-sms.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: @voce I wonder what the magic word is? Remember when they picked “I” ?”"
        T.blockquote ".right.key-sms.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Do I? Everytime somebody said “I” we buzzed around the garden!"
        T.blockquote ".right.key-sms.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Cha! I hope it’s that fun again."
      T.p =>
        T.raw "Pic: “Will the meeting come to chaos? Please, we adhere strictly to"
        T.a href: "http://en.wikipedia.org/wiki/Boggart", => T.raw "Bogart’s"
        T.raw "“"
        T.a href: "http://www.google.com/search?&amp;rls=en&amp;q=rules+of+order&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "lures of chaos."
        T.raw "” Zee, Do you have anything that will lure this meeting into chaos?”"
      T.p =>
        T.raw "Zee: “Yes, we have picked the words “"
        T.em => T.raw "permit"
        T.raw "” and “"
        T.em => T.raw "Animaniac"
        T.raw "“ as our secret chaos words for this meeting. When any member has the floor, and says anything you think is “"
        T.a href: "http://artoftrolling.memebase.com/", => T.raw "Troll Bait"
        T.raw "“ or even interesting or uses the word “"
        T.em => T.raw "permit"
        T.raw ",” you must shout out “"
        T.em => T.raw "Animaniac"
        T.raw "” and fly around the mushroom ring."
      T.p => T.raw "Please be careful not to get stuck in any spider webs, as we are not insured against web fatalities. Pixies without wings may climb trees, somersault or change batteries on your mobility devices. Please turn on your cell-phones.”"
      T.blockquote =>
        T.blockquote ".right.key-sms.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Animaniac? That is sooo 1993!"
        T.blockquote ".right.key-sms.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-sms soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: It’s OK, It’s Old School homage"
      T.p => T.raw "Pic: “We call on Soto to give us a report on the preparations for the Half Joggette”"
      T.p => T.raw "Soto: “We have scattered our fliers on the floors of all the Tri-Met buses serving St. John’s, and we need authority for the cost of a street use permit.”"
      T.p =>
        T.raw "At the exact moment Soto said ‘"
        T.em => T.raw "permit"
        T.raw ",’ Voce shouted: “"
        T.em => T.raw "Animaniac"
        T.raw "!!!” and no-one heard anything for a few minutes."
      T.p => T.raw "Time passed predictably. The meeting too. Many interruptions and cricket choruses of “Animaniac!”"
      T.p => T.raw "Pic: “It seems our time for lured chaos is nearly over. Does anyone have something we can agree on?”"
      T.p => T.raw "Hal2000: “I have no idea what is going on, I’m tired and irritable and we have not accomplished anything.”"
      T.p => T.raw "Zee: “Hal2000 says he has no idea what is going on — Is that something we can agree upon?”"
      T.p => T.raw "All: “Yes!”"
      T.p => T.raw "Pic:”We have consensus! Ok, everybody, till next time: This meeting is now declared Animaniac!”"
      T.blockquote =>
        T.p =>
          T.raw "And with that,"
          T.span ".FBname", class: "FBname", => T.raw "Friend"
          T.raw ", Yakko, Wakko, Dot and I bid you a grand and glorious “Animaniac”"
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
page = new planning_for_pixies
console.log T.render page.html

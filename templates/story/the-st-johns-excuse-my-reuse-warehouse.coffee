# 
class the_st_johns_excuse_my_reuse_warehouse extends stjohnsjimtemplate
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
      @post_the_st_johns_excuse_my_reuse_warehouse()
  # 
  # section post_the_st_johns_excuse_my_reuse_warehouse
  # 
  post_the_st_johns_excuse_my_reuse_warehouse: =>
    T.div "#post-the-st-johns-excuse-my-reuse-warehouse.article.article-type-post", id: "post-the-st-johns-excuse-my-reuse-warehouse", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "The St. John's Excuse-My-Reuse Warehouse"
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
        T.raw ", You may remember Winnie Daough. She runs the St. John’s Recycle Warehouse. It’s a volunteer thing. She runs it out of her basement. If she has it somewhere, she’ll let you borrow it or use it."
      T.p => T.raw "People come by and leave stuff in their front yard: old pilings, gravel, tractor treads: you know, the stuff that gets top price on craigslist."
      T.p => T.raw "Winnie takes it all in, sorts through the good stuff, and uses the rest to prop up the trees. Picture and window frames, with and without glass, fluorescent bulbs and fixtures, drills and saws. Anything made of wood or bamboo."
      T.p => T.raw "For example, Winnie can take a few pieces of scrap gypsum board and lash them together with bamboo-splined duck tape. Thirty minutes later she has a gantry for her station of the proposed aerial tramway. It uses the remains of old ’50’s era treehouses in the neighborhood as waypoints. Another time, she and her sister Pathy built a hang glider using her bamboo tape and some circus tent material. They actually made it across the Willamette from Skyline Ridge. Pathy says that she won’t do that again, as the flight was too scary for her cats."
      T.p => T.raw "“Cats? Cats on a hang-glider?” — I blurted that out without thinking. I was unprepared for Pathy’s answer."
      T.p => T.raw "“I just told you, weren’t you paying attention? We were driving the Bear-spinners back into the trees when we got surrounded up near the top of a giant cedar in Forest Park.”"
      T.p => T.raw "I gasped: “Bear-spinners? You mean the mutant mammal arachnid spider things? I thought that was just a Portland Myth? I mean the only facts that support it are a story from a guy with the DTs and Southwick’s channelling. I only met their current boss, the Cougar, once or twice, and as I think back, it could have been a memory implanted by some fungal alien mind probe.”"
      T.p => T.raw "She said: “Oh, have you been probed too? It’s happening all around.” She shoved a newspaper clipping under my nose: ‘{{{RogerObt:St. John’s Resident Found Covered with Fungus}}}.” I read it quickly and was stunned: Old Roger had been found at his computer covered in a fungal web veil."
      T.p => T.raw "I gasped again: “What the?? Pathy, I knew this guy. Roger roomed over at 3 Gunas Loop with Southwick and Tommy. Roger was the stable one, with every contingency covered. He had a Ph.D. in Preventative maintenance and everything. He was getting another on-line Doctorate in Minding Your Own Business. What went wrong?”"
      T.p =>
        T.raw "Pathy said: “The word from the fungal underground is that he was singing ‘"
        T.em => T.raw "I did it my way"
        T.raw "’ on Karaoke.”"
      T.p => T.raw "I gasped again: “Karaoke! cough, cough.”"
      T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: He’s getting winded from all the gasping."
      T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Maybe it’s COPD."
      T.blockquote ".right.key-author.right-align.h6.p2.bg-white.bg-darken-1.border.rounded", class: "right key-author right-align h6 p2 bg-white bg-darken-1 border rounded", => T.raw "Hey, who let you in here?"
      T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: We’re fans, drop dead and write the F*ckin story, bozo, or you will think Misery all over again."
      T.p => T.raw "Ok, chastized by my fans, I return to the narrative:"
      T.p =>
        T.raw "I said: “Karaoke! OMG. ‘"
        T.em => T.raw "I Did It My Way!"
        T.raw "’ I’ve heard that song is a karaoke Death Sentence in 39 countries! Was he on one of those on-line Karaoke Clubs?! Isn’t that a violation of his PhD in Minding Your Own Business?”"
      T.p => T.raw "Pathy replied: “Well, no, he actually was doing the solitaire version, but the great fungal underground was so offended that he was terminated.”"
      T.p =>
        T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: I like that song."
        T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Let’s sing it together."
        T.blockquote ".right.key-author.right-align.h6.p2.bg-white.bg-darken-1.border.rounded", class: "right key-author right-align h6 p2 bg-white bg-darken-1 border rounded", => T.raw "Hey, the great fungal underground may be reading this right now, so let’s not and say we did, OK?"
        T.raw "."
      T.p => T.raw "“It’s hard nowadays to mind your own business. So how did you get away from the spiders?” I shifted the conversation back to the cats."
      T.p => T.raw "Pathy said: “We were pretty well outnumbered, but I texted Winnie at home, and she biked over with all sorts of stuff in her back-pack. She scattered the spiders with a butane powered hair-drier and climbed up. It only took her a couple of hours to lash together and test the hang-glider, but the flight back across the Willamette with all my cats was quite difficult: if you have even one air-sick cat crawling up your neck on a hang-glider, you are having a bad day.”"
      T.p => T.raw "Pathy kind of went silent for a few moments, then brightened and said: “Winnie’s pretty much able to whip something up that works for as long as needed, and then we just recycle it somehow: we used the wings of that hang-glider contraption to recover the sofa.”"
      T.p => T.raw "Just at that moment, our neighbor Station came in and asked for a tent-flap. Winnie jumped around for a few moments looking for something suitable. She found some recycled silk woven into a picture of Chairman Mao, then she whipped the cover off the sofa, replaced it with the silk and handed the cover to Station. Station said: “I will remember you in all my prayers. By the way, here are some of Leo’s old Nike shoes.”"
      T.p => T.raw "Winnie’s eyes lit up: “Thanks! If you string them together toe to heel, they make great treads for the wheelbarrow!”"
      T.p => T.raw "That’s the report from the St. John’s Excuse-My-Reuse Warehouse today."
      T.p =>
        T.raw "Pathy’s wisdom— “if you have even"
        T.em => T.raw "one"
        T.raw "air-sick cat climbing up your neck on a hang-glider, you are having a bad day.”"
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
page = new the_st_johns_excuse_my_reuse_warehouse
console.log T.render page.html

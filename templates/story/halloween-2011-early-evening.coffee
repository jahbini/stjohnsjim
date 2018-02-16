# 
class halloween_2011_early_evening extends stjohnsjimtemplate
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
      @post_halloween_2011_early_evening()
  # 
  # section post_halloween_2011_early_evening
  # 
  post_halloween_2011_early_evening: =>
    T.div "#post-halloween-2011-early-evening.article.article-type-post", id: "post-halloween-2011-early-evening", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Halloween 2011 -- Early Evening"
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
      T.p => T.raw "Halloween night, 2011. It is a new moon and the darkness falls quickly in the Portland Autumn."
      T.p => T.raw "Pathy has volunteered to take a group of kids for trick-or-treat in downtown St. John’s. She sewed her own costume this year as every year. Last year she dressed up as as Carmen Miranda with a tutti-frutti hat. This year she decided to be a sunflower with glowing golden petals surround her face. She figured that sewing little lights to the back of each petal would help light the way."
      T.p => T.raw "Instead, she is nearly blinded by the lights around her face and the children are holding her hands to keep her from bumping the telephone poles."
      T.p => T.raw "That was the cause of her leading the kids off the planned route and finding herself on 3 Gunas Lp by Pier Park. The children run up to the door and knock."
      T.p => T.raw "“Trick or Treat!” Tommy opens the door. He has nothing. He considers slamming the door, but instead says “wait a minute.” He grabs a handful of stuff from the bathroom shelves and jams them into the waiting goodie baskets, saying “Be safe kids.”"
      T.p => T.raw "Pathy sighs and turns: “Follow me children. Hold hands.” She starts out to the next house, but loses her bearings almost immediately and walks straight into the darkest part of Pier Park."
      T.p => T.raw "Pathy stops at a bench and gives the kids a moment to rest. Immediately the kids start looking at the stuff and talking at once: “ook, it’s toothpaste.” “I got a tiny bottle of shampoo.” “Pathy, what’s this?”"
      T.p => T.raw "Pathy pokes through the kids bags and finds bars of soap from motels. Another had mouthwash. There were a couple of condoms in there too. A small silk bag with red jellied candy. Pathy made sure that Tommy’s nastiest treats were out of the hands of the kids."
      T.p => T.raw "“Well, I’m not sure how we got here, the ACK!” Pathy stops short, “What was that! Quiet, children! Hush. I bet there is a raccoon over there. Don’t scare it.” She turns off her lighted costume and gazes into the darkness. “Did you see that? It ran right by us!”"
      T.p => T.raw "The raccoon wanders in between the cedars, and then seems to climb straight up into the air. One of the children screams: “It’s a spider!” Pathy looks carefully and gulps: “Oh, no, it’s just a trick of the light. Let’s head back to the street!” Secretly she is scared stiff, but keeps her cool and gets the kids back to Tommy’s house."
      T.p => T.raw "She knocks: “Southwick. Are you there? I need your help.” Tommy answers. “Hey, aren’t you one of Southwick’s friends? I’ll go get him. How’d you like the Halloween treats? Pretty good that I save the soap and stuff when I go out of town.”"
      T.p => T.raw "Southwick comes down, and after seeing her in such a frightened state agrees to walk the children back to St. John’s. Southwick wants to know what has got her so upset: “Are you alright? What happened?”"
      T.p => T.raw "Pathy tells him about the raccoon: “Honestly, it climbed straight across between two trees about 30 feet up. It had eight legs! It dropped this.” She shows him a small bag full of squares of red jelly candy. Southwick looks in: “So what? red jelly candy.” Pathy explains: “This is the candy that Leo and Station brew up out of my Habanero eating slugs. Gad I hate those things. Station and Leo sell it over the internet for their sex wrestling seminars.”"
      T.p => T.raw "Southwick looks at the bag. It’s a silk bag with the initials T.Q. He hands it back, saying: “I bet Leo and Station are making a killing. Does this stuff work?” Pathy replies saying: “I don’t know, they charge too much for it. It is very special. And you need a partner, you know.” Southwick looks into Pathy’s eyes. She continues: “You know, I’ll be handing out treats at home this evening, you could help.” Southwick blesses his good fortune."
      T.p => T.raw "Southwick reassures Pathy and the kids as they make it back to St. John’s. By the time they get back the kids have forgotten everything except how lame Tommy’s treats are."
      T.p => T.raw "As soon as Pathy is gone, Southwick calls The Cougar. “Hi, TC. I got some information you might want to know:”"
      T.p => T.raw "TC: “Spill it.”"
      T.p => T.raw "Southwick: “Pathy Daough just led a bunch of kids into Pier Park… They saw a raccoon climb around like a spider in the trees. Are you starting up shop in Pier Park? I thought you wern’t going to do that.”"
      T.p => T.raw "TC: “No, it’s not me.”"
      T.p => T.raw "Southwick: “Pathy also had a little silk bag with your initials on it. The raccoon dropped it. It had some of Leo and Station’s sex candy in it. Tommy also put some into the kid’s trick or treat baskets.”"
      T.p => T.raw "TC: “My bag? Candy? Tommy?!!”"
      T.p => T.raw "Southwick: “I’ve seen Steven and Bambi Brew over at the place a couple of times since July. Tommy has some crazy idea about toxic DNA recycling. Way over my head. But if one of these bugs dropped it, it has to get back to you somehow.”"
      T.p => T.raw "TC: “Thanks, I’ll take care of it right away. Just make sure that you are not home at midnight, OK?”"
      T.p => T.raw "Southwick: “Oh, I don’t think that will be a problem at all tonight.”"
      T.p => T.raw "The Cougar gives Tommy a call: “We are having a meeting at your place tonight. Get ready for all the fun you can handle. Ask Roger what I mean. Bambi too. Especially Bambi. Call me when Bambi is there. I’ll do you both at the same time. It’s on me.”"
      T.p => T.raw "Tommy has heard many, many times Roger’s stories about her fabulous techniques. “She has the Kama Sutra in her arteries.” according to Roger. Tommy agrees: “That sounds great. But I don’t want seconds, I want you to take care of me first.”"
      T.p => T.raw "TC: “Don’t worry, I’ll give you very, very special care. Bye-bye. See you later.”"
      T.p => T.raw "Yes {{{Halloend:Very Special Care}}}"
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
page = new halloween_2011_early_evening
console.log T.render page.html

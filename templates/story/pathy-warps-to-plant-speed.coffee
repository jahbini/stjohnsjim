# 
class pathy_warps_to_plant_speed extends stjohnsjimtemplate
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
      @post_pathy_warps_to_plant_speed()
  # 
  # section post_pathy_warps_to_plant_speed
  # 
  post_pathy_warps_to_plant_speed: =>
    T.div "#post-pathy-warps-to-plant-speed.article.article-type-post", id: "post-pathy-warps-to-plant-speed", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Pathy Warps to Plant Speed"
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
        T.raw "I am forcing my self to write. &nbsp;It’s a strain. &nbsp;But It’s a strain"
        T.strong => T.raw "not"
        T.raw "to write. &nbsp;Strain is bad for writing. &nbsp;Writing is good for writing. &nbsp;Today, I am ignoring all the &ldquo;reasons&rdquo; to put off my workout on the ultimate mat: the blank page. True success there has lasting value. Kingdoms have fallen. Civilization advances, Yadda-Yadda-Yadda. All have happened because of expert use of the blank page. &nbsp;Or so I’m told."
      T.p => T.raw "As a last ditch effort to get isolated, I set my iPod to stun and inject myself with John Fahey&rsquo;s &ldquo;Revolt of the Dyke Brigade&rdquo; &mdash; straight to the inner lobes of mental tornadoes and emotional Rube Goldbergs. My eyes twitch for a second as strain goes away. Fast. Like Portland rain liquidates Portland snow. Unbelievably fast."
      T.p => T.raw "The strain is gone. What strain? Who me? I immediately go into denial. Am I not a master of Strain-Ku? Channeled through Southwick and taught as the zillions of mental tricks to change mood or the Seven Rules of the Inner Game or whatever? You know strain-ku, the art of water calms fire, the art of directing the winds of strain to the earth."
      T.p =>
        T.raw "Don&rsquo;t deny it, Jim. &nbsp;And it isn&rsquo;t you,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "that&rsquo;s cranky, it&rsquo;s only myself. The twitch of relief I got at the driving washboard regularity of the Dyke&rsquo;s Revolt tells me the stress has built up. It&rsquo;s me. &nbsp;I will monitor this, too."
      T.p =>
        T.raw "But I"
        T.em => T.raw "have"
        T.raw "noticed it in other folks lately. Like Pathy and Winnie and Leo and Station. &nbsp;These are my neighbors in Agro-burbia, OR. Winnie is on the Agro-burbia state committee, and reports directly to the sustainable fat-cat himself: Felix Merton of the Feral Dining and Protection Society. Merton barters in protection. It&rsquo;s OK, he guarantees it&rsquo;s sustainable. He swaggers, but I think a big dog could scare him away. &nbsp;However, Leo and Station trust Merton, and that&rsquo;s good enough for me."
      T.p =>
        T.raw "Leo is concerned about cosmic megawaves or something on the stock market sub-carrier frequencies. He says it indicates more bank failures, and that raises the stress level. Station says that he has been attacked by racoon&rsquo;s and needs to apply for a state waiver to be able to use his martial arts against them. &ldquo;They want me to stop? My people have been Pirates. Maybe I should try"
        T.em => T.raw "that"
        T.raw "instead!&quot; – how’s that for evidence of stress?"
      T.p => T.raw "Winnie had wanted to show Pathy her birthday present: a thirty inch, nearly completed Buddhist Sand Mandala for Pathy to finish. Winnie had found it in among the kid&rsquo;s section of the Crystal Hookah Cafe. You know, the place in the back that looks like a castle and has kids building block."
      T.p => T.raw "Winnie found a whole kit to create your own pattern and lay it out in sand. It took her about 2 weeks in her spare time to get up to the point where Pathy could finish it and then have the opportunity to blow it away. Kind of like candles on a cake. That&rsquo;s what sand mandalas are for. To help us release our hold on stuff."
      T.p => T.raw "Winnie had left it over at the cafe, and in the few days that she got around to remembering it, kids had finished it and blown it away. All that was left was a bar-glass stain on the instruction sheet."
      T.p => T.raw "When Winnie and Pathy saw it was gone, Winnie was really pissed that her surprise misfired. She went up to the bartender, called her supervisor, checked out the Crystal Hookah&rsquo;s 24 hour meditation overdose hotline, but to no avail. She was certain that the kids had plotted against her, or worse, just didn&rsquo;t care."
      T.p => T.raw "&ldquo;What do you mean just start over? &hellip; Don&rsquo;t you know how much effort goes into a mandala? &nbsp;… It takes weeks for the big ones. Even slower than Windows on Viruses. Your supervisor should know these things. … What will I tell my sister Pathy? That you are incompetent, unfeeling boobs?&rdquo;"
      T.p => T.raw "Winnie apologized through her rage to Pathy: &ldquo;It&rsquo;s crazy making! You must feel so angry at me. How will we let go of attachment to outcome?&rdquo;"
      T.p => T.raw "Pathy runs very slowly when it comes to these things. I think she has circuits that run on plant time. She cooks on something for weeks and then says just the exact right thing. She looked at the table where Winnie was making elaborate hand gestures about how the Zoroastrian geegaws were here, and the Hebraic jimcracks were over there and all surrounded by blue and green baby Jesus images. Even the blank parts were left blank to show reverence for Prophets who are best unseen."
      T.p => T.raw "And Pathy just took a deep breath and blew on the table top. She straightened up, hugged her sister and said: &ldquo;Thank you, I just needed to blow the image away and remember the grains of sand scattering. I don&rsquo;t need the real thing, do you?&rdquo;"
      T.p => T.raw "Winnie blushed a bit and said: &ldquo;No, I&rsquo;m not tense at all, but I&rsquo;m glad you are OK. &nbsp;Let’s go home.&rdquo;"
      T.p => T.raw "Pathy said, &ldquo;Yes, it&rsquo;s still winter and you need to keep your energy up somehow. Rage on, but be careful where you point those emotions!&rdquo;&nbsp;"
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
page = new pathy_warps_to_plant_speed
console.log T.render page.html

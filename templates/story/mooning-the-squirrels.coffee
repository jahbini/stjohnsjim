# 
class mooning_the_squirrels extends stjohnsjimtemplate
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
      @post_mooning_the_squirrels()
  # 
  # section post_mooning_the_squirrels
  # 
  post_mooning_the_squirrels: =>
    T.div "#post-mooning-the-squirrels.article.article-type-post", id: "post-mooning-the-squirrels", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Mooning the Squirrels"
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
      T.p => T.raw "Squirrels are moving slower. They are less spooky &mdash; maybe the blue jays have been banished from their realm and squirrels are at peace. They are certainly fatter and climb in spurts. Southwick says they are reading the phase of the moon. As a species, they have had Mama Nature&rsquo;s rewards and punishments drilled into their DNA. And Mother Nature tends to live a very long time. Centuries? Longer? And there is no operating manual for Mother Nature."
      T.p =>
        T.raw "It’s like that when Mother Nature moons the"
        T.a href: "http://www.youtube.com/watch?v=0so5er4X3dc", => T.raw "squirrels"
        T.raw "."
      T.p =>
        T.raw "I am having to endure one of the… &nbsp;NO! –"
        T.em => T.raw "THE"
        T.raw "chief problem of life in Portland – It&rsquo;s the espresso. Gritty Crema. The baristas are battling evil forces."
      T.p => T.raw "Even at the hallowed street-stands of the barista Seriphim:"
      T.p => T.raw "Um, Pfc Southwick RA 18978545, reporting. Uh, Ma&rsquo;am, the crema crunches slightly. Is the espresso machine working properly?"
      T.p => T.raw "Seriphim: You numba 10 GI! No machine! You look. See &mdash; Now Cold, 1 person, 2 person, hot, cold, hot, cold. Alla time I watch, look, touch here, move here. You wait, I fix."
      T.p => T.raw "Pfc Southwick: Isn&rsquo;t there a manual for the machine?"
      T.p => T.raw "Seriphim: No manual. You go way! Hot, cold Harvest. Now rain. Squirrel fat. You bik? I kakadao you no bik. I give you sock-mao eye you no bik. You bam-a-lam con di-ay! I kakadao you numba 10 GI! You wait, I fix. Now rain. Moon Phase."
      T.p => T.raw "Pfc Southwick: Yes, Ma&rsquo;am."
      T.p => T.raw "A few moments later:"
      T.p => T.raw "Seriphim: How is this one, Sir?"
      T.p => T.raw "Senator Southwick: Well, I do believe this crema surpasses all possible substances ever enjoyed by a Greek God."
      T.p => T.raw "Seriphim: So what was all that kakadao stuff? I don&rsquo;t talk like that."
      T.p => T.raw "Senator Southwick: Ma’am, telling the Pfc&nbsp;that you know your own job means you have to talk the Pfc&rsquo;s language &mdash; He has a lot to learn."
      T.p => T.raw "Even this very day, one of my friends says he was at work till 3AM with a cranky cyclotron. I ask him if it is working properly. He says there&rsquo;s no manual or anything for the gadget. It&rsquo;s day to day operation is different: The plasma do-whatchis mingles with the ramisfristor, and the system reacts to solar flares, football games and even moon phases. He just jiggers all the controls it until it goes. He knows how to baby a cranky cyclotron."
      T.p => T.raw "His bodyguard spoke up: &ldquo;He is the only one who knows how do operate one of these things. You can only learn by experience. It takes years. That&rsquo;s why the company pays me to protect him.&rdquo;"
      T.p => T.raw "I always wondered why he has a bodyguard every time I see him."
      T.p => T.raw "Southwick exploded with his usual entrance. Moon! The Moon! It&rsquo;s all the Phase of the moon! We need a user&rsquo;s manual for appliances run by Mother Nature!"
      T.p =>
        T.raw "Here is Southwick&rsquo;s manual as translated from the"
        T.a href: "http://lyricsplayground.com/alpha/songs/m/manpiaba.shtml", => T.raw "Harry Belafonte"
        T.raw ":"
      T.p =>
        T.raw "Hi, seeker and nature worker &mdash; Om Nama Shivaya."
        T.br()
        T.raw "Please find enclosed your moon guide instruction manual &mdash; guaranteed to work with all nature systems. Lower your third intestinal toady as you greet each new day. You will instantly be filled with ArchAngel Gabriel&rsquo;s toothpicks to activate your DNA. &nbsp; As soon as your DNA is completely activated, you will no longer need this manual."
      T.p =>
        T.raw "1) Pay attention to stuff. Do it as part of 2 &minus; 9. Especially 9."
        T.br()
        T.raw "2) notice patterns. Like whether squirrels are fat and the cyclotron spokes are wobbly or the machine goes ge-ge-ge instead of je-je-je."
        T.br()
        T.raw "3) listen to other people who might know"
        T.br()
        T.raw "4) learn from somebody."
        T.br()
        T.raw "5) do something."
        T.br()
        T.raw "6) if something works, do the same thing again, mostly."
        T.br()
        T.raw "7) if something doesn&rsquo;t work, go back to what did work."
        T.br()
        T.raw "8) if that didn&rsquo;t work try experiment, then go back to 1."
        T.br()
        T.raw "9) Turn it off for a while if you can. Leave it off for a good long time, too."
        T.br()
        T.raw "10) always do #1 - otherwise the universe may blow up. Never turn your back on the universe. Except in your sleep. Then you are protected by the Sensory Input Squad who will do their best to wake you up if something important happens."
      T.p => T.raw "Hey, I hope this helps all you barista’s be able to moon the squirrels. &nbsp;The crema will thank you. &nbsp;I will thank you."
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
page = new mooning_the_squirrels
console.log T.render page.html

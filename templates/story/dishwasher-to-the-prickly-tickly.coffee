# 
class dishwasher_to_the_prickly_tickly extends stjohnsjimtemplate
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
      @post_dishwasher_to_the_prickly_tickly()
  # 
  # section post_dishwasher_to_the_prickly_tickly
  # 
  post_dishwasher_to_the_prickly_tickly: =>
    T.div "#post-dishwasher-to-the-prickly-tickly.article.article-type-post", id: "post-dishwasher-to-the-prickly-tickly", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Dishwasher to the Prickly Tickly"
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
      T.p => T.raw "Veterans Day, 2010:&nbsp; Mark your calendars &mdash; this is the day the Portland starts wearing longjohns 24/7 &mdash; Whizzing has just gotten astronomically more difficult."
      T.p => T.raw "Veterans Day, a holiday.&nbsp; I celebrate with a walk over to Pier Park to enjoy a sweet steam breath PNW morning.&nbsp; The big evergreens are having discussions high above: you don&rsquo;t think they talk to each other with their trunks do you?&nbsp; No, Their lofty discussions are echoed in bird calls and rustling branches. They keep their discussions on a high level."
      T.p =>
        T.img src: "http://stjohnsjim.com/assets/images/PlayCups.jpg", alt: "Strange Playground?"
      T.p => T.raw "Down on the ground some of the playground stuff puzzles me: are these bowls for puking after spinning in the swings?&nbsp; Some sort of high tech tin-can telephone? &nbsp;Some sort of chair?"
      T.p => T.raw "Take your babies to the park.&nbsp; Maybe they can figure out those wierd cuppy things.&nbsp; I won&rsquo;t, it&rsquo;s too much fun letting my imagination run wild."
      T.p => T.raw "But as I walk through the neighborhoods, I see the threadbare trees with prickly tickly tops.&nbsp; And my thoughts shift to the babies of the Kings."
      T.p => T.raw "We all have babies of one sort or another.&nbsp; They all require care to grow strong and worthy. &nbsp;Real babies, yes, but also your goals, enterprises and dreams.&nbsp; Even Throntle has the dream of getting off the needle.&nbsp; At present, it&rsquo;s a miscarriage, but we can always hope."
      T.p => T.raw "Bringing a dream to life in November is hard: not like Thanksgiving day.&nbsp; It&rsquo;s more like the prickly tickly events and reactions we share with the prickly tickly trees."
      T.p =>
        T.raw "The Kings of Lombard have their shop-kingdom babies in various stages of life:&nbsp; The"
        T.a href: "http://www.flickr.com/photos/96683394@N00/350036756/", => T.raw "James John Cafe"
        T.raw "&nbsp;is mature and well cared for.&nbsp; Same for"
        T.a href: "http://www.youtube.com/watch?v=sGAYk5VWkTw", => T.raw "Slim&rsquo;s"
        T.raw ".&nbsp; The Hope for Health may be a senile old business, but it is a well deserved senility."
      T.p => T.raw "Some shops are truly babies, showing lots of growing pains instead of giggles and smiles.&nbsp; How can I tell?&nbsp; Here&rsquo;s my secret: I wash dishes."
      T.p => T.raw "Like Southwick, my first job was dishwasher in a chinese restaurant.&nbsp; As long as people prefer to eat off of ceramic, it will be a hard job to outsource."
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", Southwick gave me his stake-out report from his dish washing concession at the food carts. &nbsp;It seems there is a new Storage biz there (Very profitable – hey, you gotta store the crud you get at the"
        T.em => T.raw "mall"
        T.raw ", especially after you get"
        T.em => T.raw "evicted"
        T.raw ".) &nbsp;Southwick saw Tommy renting storage for hordes of amoeba! He’s stockpiling them, Southwick says. &nbsp;We will see."
      T.p => T.raw "Southwick also tells me that when he visits friends he will often volunteer as dishwasher.&nbsp; He gets into a flow.&nbsp; Turns on his worker energy.&nbsp; It&rsquo;s humble, but your hands are always getting clean and warm.&nbsp; That&rsquo;s important on a PNW evening at a friend&rsquo;s place."
      T.p =>
        T.raw "There is a bit of fun for the careful observer, too.&nbsp; From simple stuff like &ldquo;Hmm. people aren&rsquo;t eating the horse hoof salad tonight&rdquo; to &ldquo;Hmmm. &lsquo;Suzy heart Joe&rsquo; finger painted in gravy.&rdquo;&nbsp; After a while the hints can build up and you know that"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "is reading this right now, also why Mothra and Godzilla are fighting again, when outwardly they seem A-OK.&nbsp; &mdash; You find out a lot by cleaning trash up."
      T.p => T.raw "So when the personal interactions seem like the Gulf Oil Spill of emotions, a cleaning is in order.&nbsp;While we are not exactly washing ceramic plates, you get the idea.&nbsp;Kind of like cleaning a horse. Start at the top.&nbsp; Work down."
      T.p =>
        T.raw "With a single person, you start with the very big values, the ones that trip the highest Thanksgiving"
        T.a href: "http://blissblvd.com", => T.raw "Bliss"
        T.raw "states and work back down from there."
      T.p => T.raw "With people on a team, you simply start at the top with the highest commonly shared Thanksgiving goals of the team.&nbsp; Things they all agree about.&nbsp; Then you work down to details carefully and slowly honoring all participants."
      T.p =>
        T.raw "It works best when the emotions are clean and clear, but you do what you can.&nbsp; Cloudy emotions are not bad, just inefficient as they make our vision of goals and roles less clear and less obtainable.&nbsp; If you want to obtain success, you may want to take out the mental trash.&nbsp; It&rsquo;s not just for"
        T.em => T.raw "spirituality"
        T.raw "&mdash; it&rsquo;s simply practical.&nbsp; That&rsquo;s why I call this"
        T.a href: "http://celarien.com", => T.raw "Celarien"
        T.raw "stuff &ldquo;Practical Spirituality.&rdquo; &nbsp;Personally, I&rsquo;m into the NLP for my own spiritual quest: That&rsquo;s the Old Testament Prophet stuff, in case you were wondering.&nbsp; But that&rsquo;s not all NLP does well."
      T.p => T.raw "It&rsquo;s like washing dishes.&nbsp; Some of it cleans up easily, and some of it requires a bit of time to soak before you get to the squeaky clean of better judgement.&nbsp; And, like a shower, you may want to do it more than once."
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
page = new dishwasher_to_the_prickly_tickly
console.log T.render page.html

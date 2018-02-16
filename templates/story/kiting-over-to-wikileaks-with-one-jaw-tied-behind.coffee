# 
class kiting_over_to_wikileaks_with_one_jaw_tied_behind extends stjohnsjimtemplate
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
      @post_kiting_over_to_wikileaks_with_one_jaw_tied_behind()
  # 
  # section post_kiting_over_to_wikileaks_with_one_jaw_tied_behind
  # 
  post_kiting_over_to_wikileaks_with_one_jaw_tied_behind: =>
    T.div "#post-kiting-over-to-wikileaks-with-one-jaw-tied-behind.article.article-type-post", id: "post-kiting-over-to-wikileaks-with-one-jaw-tied-behind", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Kiting over to WikiLeaks with one jaw tied behind"
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
      T.p => T.raw "I had an appointment this day for more dental work. I have heard that dentists are suffering because people’s teeth have fewer cavities nowadays. As a response, dental research has found that the optimum number of teeth is 128 instead of 32. Clone research is very close to a breakthrough on this topic. Economic research says that four times more teeth will boost profit after taxes by 326% — expect more teeth than you ever thought possible coming to a mouth near your tongue."
      T.p => T.raw "Seriously, the kid does good work. A craftsman in training. First he made a kite, maybe 100 foot across, and wired my jaw to it. Starting the wind machine, my jaw kind of sailed into the clouds with me suspended a few feet below. Remember that Dentistry was the third cousin to Benjamin Franklin. Sailing into the clouds makes it likely that lightning will strike, thus slightly numbing my mouth. After the third lightning strike, he declared that if I walk into the light, he will have my new mouth waiting on the other end."
      T.blockquote =>
        T.p => T.raw "I walked into the light, removed my shoes and belt, put all my belongings into a gray plastic tray, and the pilot said: “We are now in a holding pattern over O’hare Airport. You will not make happy hour at Slim’s unless you can travel through time”"
      T.p => T.raw "When we landed, Dr. OHSU-Demento did the usual “tap-tap-tap” BS."
      T.blockquote =>
        T.p => T.raw "It has nothing to do with being careful or thorough. They do that to get those fat government grants to explore the true meaning of the “co-educational” process. Believe it or not. It’s true, Wikileaks has the info!"
      T.p => T.raw "Seriously, I was in a hurry to get back to St. John’s and found comfort in Slim’s hospitality once I did get back."
      T.p => T.raw "But the big, big secret is what happened on the way home."
      T.blockquote =>
        T.p => T.raw "This is no bull. The Max Light Rail system is on the fritz. Well, actually, not the whole system (It’s really cool) but all the video displays for route and time updates were blinking wildly. All the Trains had the route information “Self Test” flashing along with some hexadecimal crazy stuff."
      T.p =>
        T.raw "Maybe it was the anesthetic wearing off, or maybe the dislocated jaw, but I realized that this crazy hexadecimal stuff was"
        T.a href: "http://espnish.com/2010/12/06/wikileaks-256-digit-insurance-plan/", => T.raw "THE KEY"
        T.raw "!! Yes, the key to the"
        T.a href: "http://www.wired.com/threatlevel/2010/07/wikileaks-insurance-file/", => T.raw "WikiLeaks super file"
        T.raw "!"
      T.p => T.raw "I decoded the whole file, and I want YOU to be the very first to know these important items!!"
      T.p =>
        T.a href: "http://www.huffingtonpost.com/2010/12/09/bpa-found-on-receipts-and_n_794067.html", => T.raw "You may fondle Dismo-Peptol every day!"
        T.raw "(Crap we have to put up with alla time.)"
      T.p =>
        T.a href: "http://en.wikipedia.org/wiki/Wanda_Jackson", => T.raw "Wanda Jackson is a retro hottie"
        T.raw "(Hot like a branding iron)"
      T.p =>
        T.a href: "http://abcnews.go.com/Health/MindMoodNews/veterans-college-essay-killing-barred-campus/story?id=12214399", => T.raw "Truthiness leads to Veteran Assignmet to Thought Reassessment Center by Uncle Brother"
        T.raw "(speak the truth? Oh, my, my.)"
      T.p =>
        T.a href: "http://www.dailymail.co.uk/news/worldnews/article-1325894/Jesus-AIDS-South-African-Pastor-Xola-Skosana-sparks-outrage-virus-claim.html", => T.raw "Jesus had a Doctor"
        T.raw "(I’m waiting for the Hipaa records)"
      T.p =>
        T.a href: "http://www.huffingtonpost.com/2010/11/16/brave-little-kitty-takes-_n_783876.html", => T.raw "Common House Cats herding Dinosaur"
        T.raw "(makes ya wanna go “Yeeee HAAA’)"
      T.p =>
        T.a href: "http://videogum.com/255302/the-hunt-for-the-worst-movie-of-all-time-christmas-with-the-kranks/franchises/the-hunt-for-the-worst-movie-of-all-time/", => T.raw "Humanity is doomed. Or at least humorous"
        T.raw "."
      T.p =>
        T.a href: "http://www.huffingtonpost.com/wray-herbert/forecasting-emotions_b_790310.html", => T.raw "We suck, big time."
      T.p =>
        T.a href: "http://www.huffingtonpost.com/2010/11/22/7yearold-girl-bullied-for_n_786988.html", => T.raw "Humanity is doomed, maybe…"
      T.p =>
        T.a href: "http://www.wpix.com/news/wpix-samurai-sword-son-mother,0,490069.story", => T.raw "The wisdom of Ugly Betty and Let’s not freak out."
      T.p =>
        T.a href: "http://videogum.com/223371/bridalplasty-the-final-tv-show-ever-made-before-mankind-slips-quietly-into-the-dust/tv/new-tv-shows/", => T.raw "Humanity is Doomed"
      T.p => T.raw "Did I say Humanity is Doomed? Yes, it’s out there folks. But only when the final flight lands at O’Hare."
      T.blockquote =>
        T.p =>
          T.raw "That’s not going to be soon, as the landing pattern is booked for a"
          T.em => T.raw "&gt; very"
          T.raw "&gt;  long time."
      T.p =>
        T.raw "And if"
        T.a href: "http://www.huffingtonpost.com/rev-susan-sparks/finding-my-way-as-an-orda_b_784881.html", => T.raw "this lady"
        T.raw "has a say, humor might delay that final landing a bit longer."
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
page = new kiting_over_to_wikileaks_with_one_jaw_tied_behind
console.log T.render page.html

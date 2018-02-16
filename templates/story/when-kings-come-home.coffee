# 
class when_kings_come_home extends stjohnsjimtemplate
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
      @post_when_kings_come_home()
  # 
  # section post_when_kings_come_home
  # 
  post_when_kings_come_home: =>
    T.div "#post-when-kings-come-home.article.article-type-post", id: "post-when-kings-come-home", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "When Kings Come Home"
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
      T.p => T.raw "New report demonstrates readers of &ldquo;The St. John&rsquo;s LightHouse&rdquo; can add up to 1/4 pound of neurons or more! While it restores bad breath!&mdash; remember, you read it first here.&nbsp;"
      T.p => T.raw "A person who can quiet a toy terrier with a kindly and straightforward &ldquo;well done&rdquo;&nbsp; has a rare talent:&nbsp; It will be very useful for dealing with Kindergartners and City Council members.&nbsp;"
      T.p => T.raw "I keep thinking that the Tarot Deck we normally use needs more archetypes that are adapted to our different social structures, modern stuff, bla, bla, bla. &nbsp; Some of the Major Arcana can be changed, or a few more options added. &nbsp;There could be more &quot;negative&quot; cards, but the whole thing is pretty optimistic and focuses on &quot;white magic:&quot;"
      T.p => T.raw "The four suits seem well chosen, though: Agression, Business, Creativity, Compassion.&nbsp; And I keep realizing that when it comes to ownership, protection, stability, the king-domain king queen duality is the right one.&nbsp; Kings control Kingdoms. and as sexist as the Tarot is, the King husbands his kingdom.&nbsp; So the queen of Pentacles is the business, not the owner&rsquo;s wife.&nbsp; My queen of cups is &ldquo;The St. John&rsquo;s Lighthouse.&rdquo;"
      T.p =>
        T.raw "I like to let my mind wander back to seemingly simpler times.&nbsp; I let my mind combine and mix those old times with whatever comes along, like when the iPod starts playing"
        T.a href: "http://www.myspace.com/peterlang1", => T.raw "Peter Lang"
        T.raw "&rsquo;s &ldquo;"
        T.a href: "http://www.youtube.com/watch?v=qZBm7f6bALA", => T.raw "When Kings Come Home"
        T.raw "&rdquo; &mdash;&nbsp; I quickly came up with so many possibilities, that I couldn&rsquo;t decide which had more &ldquo;unique appeal?&rdquo;"
      T.p => T.raw "That’s because this decade is too complicated. &nbsp;In the future will this decade be called the twenty-teens? The decade when technology and culture merged?"
      T.p =>
        T.raw "Imagine a retro interview with product development leader for the fabulous iFrog, Mark Hurdygurdy had to say about that culture-bubble: &ldquo;Everybody was pumping out crazy gadgets.&nbsp; We had this thing, you know, it hopped around.&nbsp; That&rsquo;s all it did. Who knew?!? Anyway, Apple always used the &quot;i&quot; in front of our product names back then, and Morty said: we can&rsquo;t us the name"
        T.a href: "http://blogs.pitch.com/plog/2009/09/ihop_leaders_den_again_that_the_church_is_really_a_cult.php", => T.raw "iHop"
        T.raw ", And I replied &ldquo;we could make it iFrog.&nbsp; And that&rsquo;s the real story behind the name iFrog.&rdquo;"
      T.p => T.raw "Who knows, It might make a great wireless toy so that we can tease cats via Twitter. &nbsp;Requirement for alien technology?&nbsp; Yes, No?"
      T.p => T.raw "One of the kings from Honolulu sent word that the band was getting back together.&nbsp; That started me thinking about what possibilities might happen. &nbsp; My inner writer went through lots of possibilities."
      T.p => T.raw "I came up with this backstory framework so I would be ready for whatever possibility this band leader has in mind!"
      T.p => T.raw "Pick one from each selection."
      T.p => T.raw "The king has gone to a foreign land. &nbsp;"
      T.p => T.raw "1) to chase invaders&nbsp;"
      T.p => T.raw "2) to conquer foreign lands"
      T.p => T.raw "3) to honor commitments to protect other lands"
      T.p => T.raw "4) to escape a coup"
      T.p => T.raw "5) Arrested for drug dealing (no kidding! this happened to my lawyer in HNL!)"
      T.p => T.raw "The Kingdom as been without a king for&nbsp;"
      T.p => T.raw "1) a week,"
      T.p => T.raw "2) a year,"
      T.p => T.raw "3) more than 5 years,"
      T.p => T.raw "4) several generations,"
      T.p => T.raw "And has returned."
      T.p => T.raw "1) The country has fallen on bad times and the king must restore order."
      T.p => T.raw "2) The country has become even more successful and the people no longer wish to have a king."
      T.p => T.raw "3) Having been exiled, the king is put under arrest."
      T.p => T.raw "4) Greeted as a hero."
      T.p => T.raw "5) DOA"
      T.p => T.raw "6) The king brings alien technology and devours New York"
      T.p => T.raw "Here is an easy one: 3, 4, 1 &mdash; Aragorn of Lord of the Rings.&nbsp; 3, 4, 1 &mdash; Old king went to protect all kingdoms and has not returned for generations, Aragorn returns to find Gondor under terrible siege."
      T.p => T.raw "My Lawyer? 5, 3, 3, Yup, As far as I know, he&rsquo;s still in the slammer.&nbsp; Never did get my tax stuff back from him.&nbsp; &mdash; Don’t give your only copy to a lawyer."
      T.p => T.raw "Take your pick.&nbsp; Life has all of those playing in a conversation near you. &nbsp;Just start listening between the lines."
      T.p => T.raw "Special bonus (for today’s readers only!): Work up a movie plot based on that theme.&nbsp; Get rich.&nbsp;&nbsp;"
      T.p => T.raw "As far as the band? &nbsp;If I’m smart, I’ll listen and say &quot;good job,&quot; &nbsp;especially if there’s Alien Technology involved!"
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
page = new when_kings_come_home
console.log T.render page.html

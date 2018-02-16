# 
class neither_forest_nor_trees_and_sigh_mentors extends stjohnsjimtemplate
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
      @post_neither_forest_nor_trees_and_sigh_mentors()
  # 
  # section post_neither_forest_nor_trees_and_sigh_mentors
  # 
  post_neither_forest_nor_trees_and_sigh_mentors: =>
    T.div "#post-neither-forest-nor-trees-and-sigh-mentors.article.article-type-post", id: "post-neither-forest-nor-trees-and-sigh-mentors", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Neither Forest Nor Trees and, sigh,  Mentors"
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
        T.raw "Late Fraking Blash! The Factory Underground has morphed into a new location above ground at"
        T.a href: "http://maps.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;msa=0&amp;ll=45.590669,-122.754756&amp;spn=0.002516,0.003551&amp;t=h&amp;z=18&amp;msid=114144299215869109392.0004969fe04ec6e3cc721", => T.raw "John’s Tavern"
        T.raw "! &nbsp;All ages welcome!"
      T.p => T.raw "Southwick was helping his friend the High Priestess of Wands with her dog &mdash; Yup, the bag broke just as he was retrieving the dog&rsquo;s offering to Mother Nature.&nbsp; As he was cleaning the poop off his fingers in November&rsquo;s river, he thought: &ldquo;Aha! I&rsquo;ll start a Doggy Bag recycling-reuse business!&rdquo;"
      T.p => T.raw "That&rsquo;s one kind of Aha! &mdash; maybe not the wisest, Southwick.&nbsp; Another, more rewarding Aha! is when you discover a new way of seeing everyday things.&nbsp; From simple things to learning plant names and uses to more abstract patterns."
      T.p =>
        T.raw "A"
        T.a href: "http://en.wikipedia.org/wiki/Obi-Wan_Kenobi", => T.raw "mentor"
        T.raw "delighted in showing me things hidden in plain sight.&nbsp; Very fun.&nbsp; She had an affinity for trees and lingered as she walked by a clump of palms or felt the hanging roots of a"
        T.a href: "http://prateekv.wordpress.com/2008/12/24/limca-book-of-records-quiz-2008-prelims/banyan-tree/", => T.raw "banyan"
        T.raw ".&nbsp; She mentioned that most of the curvy palms grow in clumps of three.&nbsp; They are like three gossiping dancers &mdash; maybe teenagers."
      T.p =>
        T.raw "I looked around and even though I had been through the"
        T.a href: "http://www.hiarmymuseumsoc.org/", => T.raw "Fort DeRussy"
        T.raw "section of Waikiki hundreds of times, D&rsquo;oh! all the palms stopped growing randomly and clumped together without moving."
      T.p => T.raw "It&rsquo;s like that when you are given a pattern that fits the world.&nbsp; The world changes at the speed of thought. &nbsp; She delighted in my &ldquo;Aha!&rdquo; moment."
      T.p =>
        T.raw "And yes, it does seem that either by art or nature, palms on O&rsquo;ahu often grow in clumps of three.&nbsp; Graceful dancers lining the roadways and parks.&nbsp; Speaking to each other of"
        T.a href: "http://gawker.com/5396065/lindsay-lohan-is-back-on-boys", => T.raw "important"
        T.raw ","
        T.a href: "http://gossipteen.com/", => T.raw "intimate"
        T.raw ","
        T.a href: "http://www.google.com/search?rls=en&amp;q=celeb+gossip+sites&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "ageless"
        T.a href: "http://www.google.com/search?rls=en&amp;q=sports+football+basketball+baseball&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "gossip"
        T.raw "."
      T.p => T.raw "Next, she showed me a secret place.&nbsp; There are lots of secret places in Waikiki, but this one is in plain sight at Fort DeRussy and goes totally unnoticed."
      T.p => T.raw "You can&rsquo;t see it because it is neither forest nor tree."
      T.p =>
        T.raw "The"
        T.a href: "http://maps.google.com/maps/ms?&amp;oe=UTF-8&amp;ie=UTF8&amp;hq=&amp;hnear=Waikiki,+Honolulu,+HI&amp;gl=us&amp;ei=Pub6TNb8NYmssAP3w4X3DQ&amp;oi=geocode_result&amp;ved=0CB0Q8gEwAA&amp;hl=en&amp;msa=0&amp;msid=114144299215869109392.0004969f75c0606f90b80&amp;t=h&amp;z=20", => T.raw "secret place"
        T.raw "is marked by several Emperor palms.&nbsp; These are the big-boy palms.&nbsp; Tall, serious and reassuring as an honest judge.&nbsp; They were laid out in an open rectangle.&nbsp; The open side of the rectangle faced several groups of dancing palms."
      T.p =>
        T.raw "I would imagine it may have been a place for GI weddings during Ft DeRussy&rsquo;s heydays during WWII. &nbsp;Southwick would imagine it was a place for a"
        T.a href: "http://en.wikipedia.org/wiki/Menehune", => T.raw "menehune"
        T.a href: "http://www.huffingtonpost.com/2010/12/04/state-department-to-colum_n_792059.html", => T.raw "hukilau"
        T.raw "."
      T.p => T.raw "The group is hard to spot now, a few of the emperor palms have died, and you might barely make out the depressions in the ground where a tree once stood."
      T.p => T.raw "Now and again, we would walk through this spot and marvel at the different feel this one spot of Waikiki had compared to the rest of the huhu of Waikiki.&nbsp; Calm, serene, joyous, maybe even reverent."
      T.p => T.raw "And just like the revelation that palms dance in threes, her knowledge allowed this place to no longer be Waikiki, no longer to be forest or tree, but a blissful place with regal oversight on one side and joyous dancers on the other.&nbsp; All at the speed of thought.&nbsp; She delighted in my &ldquo;Aha!&rdquo; moment of this scene too."
      T.p => T.raw "This mentor, like other ghosts in Honolulu, is no more, as mentors always are.&nbsp;"
      T.p =>
        T.a href: "http://www.kenwilber.com/home/landing/index.html", => T.raw "Ken Wilber"
        T.raw "speaks of"
        T.a href: "http://en.wikipedia.org/wiki/Holon_(philosophy)", => T.raw "Holons"
        T.raw "&mdash; grouping of elements to make new structure out of smaller parts.&nbsp; It&rsquo;s a pattern that is repeated everywhere in every domain: from quarks to atoms to galaxies; from sounds to syllables to words and speech &mdash; dialects and languages; from genus to phylum.&nbsp; Hero and Mentor.&nbsp; Values and emotions too."
      T.p =>
        T.raw "Hermes Trismegistus ("
        T.a href: "http://www.google.com/search?rls=en&amp;q=hermes+trismegistus&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Hermy"
        T.raw "to his friends,)&nbsp;would say: &quot;As above, so below.&quot;"
      T.p => T.raw "I love the &ldquo;Aha!&rdquo; reactions I get pointing out patterns of interaction to people. &mdash; like the concept of easy and difficult rapport: How hard do you have to work to get rapport with someone?&nbsp; Long term relationship with limited rapport? Ugh."
      T.p =>
        T.raw "Or like the patterns of values and emotions we gather from birth.&nbsp; We use them over and over as building blocks for our paths in life.&nbsp; Getting the rocks, tree trunks and potholes off the path and glimpsing the destination is what"
        T.a href: "http://blissblvd.com/", => T.raw "Bliss Boulevard"
        T.raw "is all about."
      T.p => T.raw "The December special is a free Bliss Quest session &mdash; a $90 value.&nbsp; A Bliss Quest is quick tour into your own internal Waikiki.&nbsp; Destination? A blissful place hidden in plain sight.&nbsp; Don&rsquo;t wait."
      T.p =>
        T.raw "In December, I&rsquo;ll continue to do Tarot Readings, but this month is a"
        T.strong =>
          T.em => T.raw "MUCH"
        T.raw "better deal, since I am raising the &ldquo;street price&rdquo; of a Tarot reading to $100.00."
      T.p =>
        T.em => T.raw "Aren&rsquo;t you glad you waited?"
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
page = new neither_forest_nor_trees_and_sigh_mentors
console.log T.render page.html

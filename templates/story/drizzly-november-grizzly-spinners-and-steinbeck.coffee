# 
class drizzly_november_grizzly_spinners_and_steinbeck extends stjohnsjimtemplate
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
      @post_drizzly_november_grizzly_spinners_and_steinbeck()
  # 
  # section post_drizzly_november_grizzly_spinners_and_steinbeck
  # 
  post_drizzly_november_grizzly_spinners_and_steinbeck: =>
    T.div "#post-drizzly-november-grizzly-spinners-and-steinbeck.article.article-type-post", id: "post-drizzly-november-grizzly-spinners-and-steinbeck", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Drizzly November, Grizzly Spinners and Steinbeck"
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
        T.raw "Monday.&nbsp; November.&nbsp; Pacific NorthWest Patented All Day Twilight. &nbsp;Perfect for portrait photography.&nbsp; Soft everywhere. Up, Down, Sideways &mdash; Soft light.&nbsp; Lots of bare branches in the trees.&nbsp; Mama is getting ready for bed.&nbsp; She is rolling down her oak-leaf"
        T.a href: "http://www.leggs.com/", => T.raw "L&rsquo;Eggs"
        T.raw ", showering the summer away, tucking in the nuts and seeds in secret hiding places, and turning down the lamp.&nbsp; She&rsquo;ll hang out the"
        T.strong => T.raw "Do Not Disturb"
        T.raw "sign and bed herself down.&nbsp; Mama NorthWest likes her sex when she awakens, you know:&nbsp; Then she&rsquo;s a productivity Empress that has no peer."
      T.p => T.raw "The light is so soft that the spider webs are totally invisible in the rain:&nbsp; Exactly as planned by the"
      T.p =>
        T.img src: "http://stjohnsjim.com/bridgefight1.gif", alt: ""
      T.p => T.raw "SpiderFest 2010 clean-up committee.&nbsp; All part of Mama&rsquo;s productions, you know."
      T.p => T.raw "One of the Munsters wrote me: &ldquo;Hi, I love your stories.&nbsp; I&rsquo;m a professional vegetable torturer, and what I can do to frozen french fries would curl your toes.&nbsp; I think St. Paul sux.&nbsp; I mean, as saints go, he was a douche.&nbsp; But a holy douche.&rdquo;"
      T.p => T.raw "Yes, Ed, I&rsquo;m glad that we live in St. John&rsquo;s, and not St. Paul&rsquo;s.&nbsp; I&rsquo;m not sure I&rsquo;d want my kids to marry an apostle, No offense meant to any of the apostles, but it&rsquo;s that vow of poverty thing, you know. &nbsp; Along with the chastity thing.&nbsp; And my heart goes out to all those deep-fried french fries."
      T.p => T.raw "Oh, yes, Monday.&nbsp; The James John Cafe is closed.&nbsp; In fact, they will be closed all week: Celebrations and holidays for Suzanne&rsquo;s crew.&nbsp; It seems that there have been secret trade negotiations among the staff, and a merger is happening: Justin and Danny are Mr and Mrs Justin and Danny. &nbsp;Or Mr and Mrs Danny and Justin. &nbsp;Names are confusing."
      T.p =>
        T.raw "I wonder how will this affect the quality of the Espresso &mdash; Danny’s"
        T.em => T.raw "steam-punk love"
        T.raw "scalds the coffee: the howl of the steam cries &ldquo;crema&rdquo;, and the thick tears flow.&nbsp; She watches intently, contemplating the wonders of their future, ignoring&nbsp;the horrors those poor coffee beans suffer.&nbsp;&nbsp;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", wish them well, and hope for their health. &nbsp;I do."
      T.p => T.raw "And that reminds me about the &ldquo;Hope for Health&rdquo; bar and dumpster, where I was able to talk with Sandy about the Bear Spinner attack last night: Halloween."
      T.p => T.raw "I find Sandy kind of curled up in a doorway. &nbsp;He has some whitish goo on his hands and pants. &nbsp;I don’t shake his hand, and he says something about it being spider silk from the big battle."
      T.p => T.raw "Sandy tells me: &ldquo;yeah, last night.&nbsp; Bad night. ugh.&nbsp; She got &lsquo;em though.&nbsp; Big Amazon Woman Cat thing.&nbsp; About 10PM, I began to see &lsquo;em again.&nbsp; High up in the trees.&nbsp; Spiders all over the dumpster.&nbsp; Brushing all over my face.&nbsp; Not crows&hellip; Kinda. &nbsp;Maybe.&rdquo;"
      T.p => T.raw "Sandy heard something over on the St. John’s bridge. &nbsp;The whole bridge was covered in them! &nbsp;Sandy said: &quot;Big ones, and even bigger ones. &nbsp;Hairy. &nbsp;big hairy spiders. and then the scream!&quot;"
      T.p =>
        T.raw "The scream was the challenge of a Big Cat.&nbsp; All of the spiders stopped dead for a moment.&nbsp; Then this crazy cougar jumped off the back of a Harley right &nbsp;the thick of it. &nbsp;Battling with claws, fangs and stiletto heels and kisses, the cougar was in top form. &nbsp;She"
        T.strong =>
          T.em => T.raw "was"
        T.raw "a skin tight leotard with a dragon ripping its way out."
      T.p => T.raw "Suddenly everything was silent and huge Bear Spinner appeared. &nbsp;The king or queen.&nbsp; Must have been 8 foot from butt to beak.&nbsp; Even bigger legs.&nbsp; The Cougar leaped, the boss leaped. &nbsp; They twirled, they grappled, they stroked, they bit."
      T.p => T.raw "But as the Cougar did her stuff, the boss spider having a tough time figuring if he was fighting or having a good time.&nbsp; The Boss screamed in ecstasy and shot spider silk in every direction.&nbsp; All the other spiders began fighting amongst themselves, and when the boss smiled it&rsquo;s last smile, said: &ldquo;hold me,&rdquo; the cougar simply pushed the boss off the middle of the bridge. &nbsp;It shares the bottom of the Willamette with Bamboo Willy."
      T.p => T.raw "All the spiders parted and began gyrating in anticipation.&nbsp; The cougar strutted over the bridge. They followed."
      T.p =>
        T.raw "I looked at the St. John&rsquo;s bridge, and the spider silk is all washed away: it must have looked impressive.&nbsp; But then, It could be just the wet dream of an old"
        T.a href: "http://en.wikipedia.org/wiki/Delirium_tremens", => T.raw "alky:&nbsp; Sandy also tells me he has won the Oregon Tilth Certified Organic Delirium Tremens"
        T.raw "for five consecutive years. &nbsp;I wonder if that stuff on Sandy’s pants might really be spider silk?"
      T.p => T.raw "But then I remembered Sandy mentioned a Harley.&nbsp; On a hunch I called Roger over at 3 Gunas Lp."
      T.p => T.raw "Roger admitted to taking her to the bridge at midnight.&nbsp; I asked Roger: &ldquo;But aren&rsquo;t Cougars supposed to like younger guys?&nbsp; You are pushing 70!&rdquo;"
      T.p => T.raw "Roger says: &ldquo;A Cougar like that can like anybody she wants to.&nbsp; Besides, I&rsquo;m an expert at Preventative Maintanence.&nbsp; Ladies like a feeling of safety and security.&nbsp; Even Cougars.&nbsp; Ya think?&rdquo;"
      T.p =>
        T.raw "Yup,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", shall we agree safety and security are pretty desirable in a relationship?"
      T.p => T.raw "My hat&rsquo;s off to you Roger."
      T.p => T.raw "The spiders?&nbsp; The Cougar?"
      T.p => T.raw "Rumor is that they live high in the trees over at Forest Park.&nbsp; Who knows what horrors will come out of a deep forest spider-cougar commune next year?&nbsp; Southwick, what have you done?"
      T.p =>
        T.raw "The reality? &nbsp;Well, I’m with"
        T.a href: "http://www.google.com/search?client=safari&amp;rls=en&amp;q=steinbeck&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Steinbeck"
        T.raw ". I love all my character’s views of reality. &nbsp;The Celarien tells me that they are all 100% correct."
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
page = new drizzly_november_grizzly_spinners_and_steinbeck
console.log T.render page.html

# 
class omg extends stjohnsjimtemplate
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
      @post_omg()
  # 
  # section post_omg
  # 
  post_omg: =>
    T.div "#post-omg.article.article-type-post", id: "post-omg", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "OMG"
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
        T.raw "It&rsquo;s a bright and clear Fall morning.&nbsp; The rain has stopped and the spiders are out again.&nbsp; Spinning webs.&nbsp; Spiderfest 2010 hopeful"
        T.a href: "http://www.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;msa=0&amp;msid=114144299215869109392.0004920b87d0a9c46bbd7&amp;t=h&amp;z=20", => T.raw "Bamboo Willy"
        T.raw "didn&rsquo;t make it through the torrents of rain recently and was last seen spiraling down the Smith Street drainage system.&nbsp; I suspect that the Willamette River is his address now."
      T.p =>
        T.raw "The first prize in the"
        T.em => T.raw "catch-em-wrap-em"
        T.raw "contest of Spiderfest 2010 went to the"
        T.a href: "http://www.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;msa=0&amp;msid=114144299215869109392.0004929a77b2fc91ba602&amp;t=h&amp;z=20", => T.raw "Willow Twins"
        T.raw "on N St. John’s Ave.&nbsp; As i passed them I saw them enjoying the prize: a smelly coral shaped fungus that erupted overnight and is drawing bugs like crazy.&nbsp; I let the twins go on their path:"
        T.em => T.raw "respect"
        T.raw ", my fellow travelers on spaceship earth."
      T.p => T.raw "A few steps later, Southwick runs up to me sputtering: &ldquo;Bear-Spinners!&nbsp; We forgot all about them!&nbsp; They&rsquo;re coming! Monster Spiders! OMG!&rdquo;&nbsp; I think Southwick is afraid of spiders.&nbsp; Maybe a little too much."
      T.p =>
        T.raw "Over at 3"
        T.a href: "http://en.wikipedia.org/wiki/Gu&#7751;a#In_Samkhya_philosophy", => T.raw "Gunas"
        T.raw "Lp, Southwick got up early today:&nbsp; That is, Tommy got up early, all in a hub-bub about Halloween and woke everybody up."
      T.p => T.raw "Tommy said: &ldquo;OMG Last night was trick or tread, and we handed out rocks to the kids.&nbsp; But tonight is real Oct 31!&nbsp; How can there be two Halloweens?&rdquo;"
      T.p =>
        T.raw "Southwick wanted to know: &ldquo;It’s trick or"
        T.em => T.raw "treat"
        T.raw ", Tommy. Rocks? That sucks.&nbsp; Halloween is Sunday and everybody goes to work tomorrow, so they did the trick-or-treat on the 30th. Why rocks?&rdquo;"
      T.p => T.raw "Tommy says: &ldquo;These are Oregon rocks.&nbsp; The best.&nbsp; We dredge &lsquo;em up.&nbsp; We got lot&rsquo;s of them at Waterfront U.&nbsp; But that&rsquo;s not the important thing-&nbsp; It&rsquo;s the Grizzly Spinners, they are out tonight, not last night, and the kids won&rsquo;t be out.&nbsp; They&rsquo;ll take over Pier Park!&rdquo;"
      T.p =>
        T.raw "Roger, the Professor of Preventive Maintenance, chimes in: &ldquo;It&rsquo;s no big thing, the cougar will take care of it.&rdquo;&nbsp; &mdash; When pressed about what he knows about the Hawaiian Cougar that Southwick imported, Roger will only say: &ldquo;All I know is that she&rsquo;s not the"
        T.a href: "http://www.google.com/images?rls=en&amp;q=images:+mahu&amp;oe=UTF-8&amp;um=1&amp;ie=UTF-8&amp;source=univ&amp;ei=mPXNTIGWN4u-sQPP8rjXDg&amp;sa=X&amp;oi=image_result_group&amp;ct=title&amp;resnum=5&amp;ved=0CDYQsAQwBA&amp;biw=1043&amp;bih=596", => T.raw "mahu from Oahu"
        T.raw "&rdquo; –"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", what the heck can that mean?"
      T.p => T.raw "Southwick is having a fit: &quot;The kids have some sort of mojo to repel these nasty spiders each Halloween, but without the neighborhood search and seizure parade on Oct 31, we&rsquo;re gonna have man-eating spiders in Pier Park!&nbsp; Falling out of the sky!&nbsp; The sky!&nbsp; Falling!&nbsp; The sky!&nbsp; Falling!!&nbsp; OMG!!!!&rdquo;"
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", Let me explain: Tonight is real Halloween.&nbsp; The scary night.&nbsp; The guys over at the Crystal Hookah Church and Roach Coach won&rsquo;t even go outside their hookah on October 31st. &nbsp; Every time I get something from Southwick, I find solid evidence in the testimony of Sandy, the Delirium Tremens expert from the parking lot of the &ldquo;Hope for Health&rdquo; bar.&nbsp; I&rsquo;ll see him tomorrow.&nbsp; He will have the REAL vomit!"
      T.p => T.raw "But I have a confession. &nbsp;OMG. &nbsp;Do I have to confess? &nbsp;Will it make me feel better?"
      T.p => T.raw "There is something I&rsquo;ve been carrying in my backpack for too long.&nbsp; It&rsquo;s a copy of William Faulkner&rsquo;s &ldquo;As I Lay Dying&rdquo; &mdash; It&rsquo;s extra heavy because I got the edition with 300 pages of masturbatory analysis.&nbsp; Faulkner got a Nobel prize.&nbsp; Masturbators, start your engines!"
      T.p =>
        T.raw "OMG, Faulkner is scary.&nbsp; Not my favorite author.&nbsp; His characters have a weird spider crawling through the thoughts of each character spinning out the web of the story.&nbsp; His character&rsquo;s think in dialect carefully curried to have a demented quality.&nbsp; Let me repeat that: they THINK in dialect.&nbsp; Now that&rsquo;s a pretty powerful literary device.&nbsp; But even Faulkner stumbles every so often: The second chapter labelled &ldquo;Dewey Dell&rdquo; in his work: &ldquo;As I Lay Dying&rdquo; has the sentence &mdash; &ldquo;"
        T.em => T.raw "He could do everything for me if he just knowed it. The cow breathes upon my hips and back, her breath warm, sweet, stertorous, moaning"
        T.raw ".&rdquo; (This sentence included under fair use provisions and against my better judgement, but hey, I’m no Faulkner.)"
      T.p =>
        T.raw "OK, we get it Mr Faulkner: Dewey Dell is simpleminded, obsessed, afraid, unschooled, but astutely paying attention to the physical aspects of life.&nbsp; But where would"
        T.em => T.raw "she"
        T.raw "ever come up with the word &ldquo;"
        T.a href: "http://www.thefreedictionary.com/stertorous", => T.raw "stertorous"
        T.raw ",&rdquo; &nbsp;for &quot;snoring&quot;? &nbsp;I’m sure Dewey is familiar with snoring…. Hmm??"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", If a Nobel laureate can make such a gaffe, there may be hope for St. John&rsquo;s Jim as a writer."
      T.p => T.raw "For me?&nbsp; When I read that, after wading through the dismal terrain of humanity you celebrate, I threw the book on the floor, picked it up so I could throw it down again.&nbsp; Then I used the pages to wipe my okole and then I sterilized my tookus.&nbsp; Thanks, Faulkner, you give me hope."
      T.p =>
        T.raw "OMG, is it OK to not like Faulkner?&nbsp; gee, I guess it is. &nbsp;And with that thought I gain freedom."
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", can you gain freedom from allowing yourself to like or dislike what ever you want? &nbsp;Sure you can."
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
page = new omg
console.log T.render page.html

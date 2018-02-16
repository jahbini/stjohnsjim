# 
class tastes_aromas_and_earthquakes extends stjohnsjimtemplate
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
      @post_tastes_aromas_and_earthquakes()
  # 
  # section post_tastes_aromas_and_earthquakes
  # 
  post_tastes_aromas_and_earthquakes: =>
    T.div "#post-tastes-aromas-and-earthquakes.article.article-type-post", id: "post-tastes-aromas-and-earthquakes", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Tastes, Aromas and Earthquakes"
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
      T.p => T.raw "(Author’s note: &nbsp;This one is more imagery than narrative. &nbsp;A friend asked if I could add one more dimension to the writing, and well, this is my response. &nbsp;The narrative was bent. &nbsp; Sometimes that happens. As a result, the relationships between paragraphs is less structured, I hope you enjoy.)"
      T.p =>
        T.raw "It’s all scientific. &nbsp;Science tells us: on one&nbsp;"
        T.a href: "http://www.huffingtonpost.com/2010/12/09/bpa-found-on-receipts-and_n_794067.html", => T.raw "hand"
        T.raw ", and on the other&nbsp;"
        T.a href: "http://www.huffingtonpost.com/2010/12/09/surgeon-general-1-cigaret_n_794250.html", => T.raw "hand"
        T.raw ". &nbsp;I give up. Are the end times coming? &nbsp;End of crappy reports like those two, I hope."
      T.p =>
        T.raw "But science does know lots of stuff:&nbsp; Like the fact that both aromas and earthquakes activate our most primitive neural responses:&nbsp; A newborn is hugely sensitive to falling; and smells, for some mysterious reason, are wired directly to the brain’s &ldquo;"
        T.a href: "http://webspace.ship.edu/cgboer/limbicsystem.html", => T.raw "Big Gadget."
        T.raw "&rdquo; &nbsp;In real terms: they have mojo powers."
      T.p => T.raw "Yesterday, I mentioned that the Tarot King/Queen has nothing to do with man-woman.&nbsp; Well, yes, of course it does. &nbsp;Think of shifting the view from &quot;functional&quot; to &quot;relational.&quot;"
      T.p => T.raw "Every sideshow carney knows the Tarot is THE reference book for the most important question: &ldquo;Is he the one for me?&rdquo;&nbsp; It is a shift in perspective, but still sees the same archetype.&nbsp; The Queen becomes &ldquo;First Citizen&rdquo; of the domain &mdash; someone else is the king."
      T.p => T.raw "For example: The Queen of Swords.&nbsp; If a woman is married to a military guy and supports her husband&rsquo;s military values for herself and her children, then clearly she is the &ldquo;first citizen&rdquo; and Queen of the domain."
      T.p => T.raw "But shift your view slightly:&nbsp; Same military guy, but the woman is dedicated to science and raises the family that way.&nbsp; Her husband&rsquo;s Military influence (his domain) is augmented or replaced by her values. &nbsp;She is more like the King of Wands, than a Queen of Swords.&nbsp;"
      T.p => T.raw "(Jim’s note: Are you asleep yet? &nbsp;Sorry, but some of my readers tell me I need dot all my &quot;hermits&quot; and cross all my &quot;kings&quot;. – I don’t think there is any wisdom whatsoever in crossing a king. &nbsp;Dotted hermits are a dime a dozen. )"
      T.p =>
        T.raw "It is OK to shift points of view temporarily, and surprisingly often, permanently.&nbsp; For example, temperature makes a huge difference in flavor: warm, cold and ice &mdash; You might like warm cream, and"
        T.em =>
          T.strong => T.raw "love"
        T.raw "ice cream but you"
        T.em =>
          T.strong => T.raw "hate"
        T.raw "cold cream. &nbsp;The emotional reactions we might have depend on whether we taste with our minds, gut, skin or &quot;yuk yuks&quot;."
      T.p => T.raw "But enough of the Tarot – &nbsp;Business in St. John&rsquo;s is, for the moment, tasting a bit like cold cream. &nbsp;Store walls are bare where a thriving business should be &mdash; or at least a wall mounting, maybe of an egyptian sun god."
      T.p =>
        T.raw "Even worse – In line with the spirit of giving is the spirit of taking. &nbsp; Christmas tree lots are shrinking, shrinking shrinking from 3AM theft.&nbsp; It seems like the&nbsp;"
        T.a href: "http://www.mappsd.org/tweakers.htm", => T.raw "tweakers"
        T.raw "&nbsp;are having Christmas early, or else the black market in Christmas trees (Are we still allowed to say Christmas? Are we still allowed to say Obama?) is vast."
      T.p => T.raw "From some of the conversations and complaining I hear, some people don&rsquo;t get the emotional content of what&rsquo;s happening around them:&nbsp; Especially when folks are stuck at the neener-neener response stage."
      T.p => T.raw "Do they think emotional cold cream should be just like emotional ice cream? &nbsp;One might be just for learning and the other for enjoying.&nbsp; Or maybe enjoying in completely different ways?"
      T.p =>
        T.raw "Southwick is looking to add skills to his"
        T.a href: "http://current.com/news/92847649_obama-threatens-our-rights-and-free-speech-progressives-celebrate.htm?xid=76&amp;#92860476", => T.raw "resume"
        T.raw ".&nbsp;Tommy told him to hang at he dumpster behind the Wal-mart and jump in any pick-up truck that had less than 8 guys in it. &nbsp;Construction work. Tommy told him to bring his own sawdust to scatter around at the end of the shift.&nbsp; The diversion worked well, for the moment.&nbsp;"
      T.p =>
        T.raw "Tommy was bragging about his exploits and compared himself to the guy in &ldquo;"
        T.a href: "http://en.wikipedia.org/wiki/Scent_of_a_Woman", => T.raw "Scent of a Woman"
        T.raw "&rdquo; where DeNiro&rsquo;s character wants to leave this life as he entered it: &ldquo;"
        T.a href: "http://www.bartleby.com/100/337.128.html", => T.raw "Trailing Clouds of Glory"
        T.raw "&rdquo; &mdash; Hence, the victorious Scent of a Woman. (Elitists note: the grand exit – don’t sign the contract without it!)"
      T.p => T.raw "Roger says he leaves his lady in the morning with a lingering kiss and a hand visiting an intimate friend (Southwick admits the actual word Roger used was &quot;hootchie.&quot;) &nbsp;As he drives away the lingering moment becomes a lingering scent.&nbsp; Later, a slow warm exhale on a cold finger releases vivid memories of recent jousts and earthquakes."
      T.p => T.raw "Roger says: &nbsp;&ldquo;Helped me through many boring meetings.&nbsp; Makes me wanna repeat.&rdquo;"
      T.p => T.raw "Tommy cut in &ldquo;Gotta have push ups, too.&rdquo;"
      T.p => T.raw "Southwick asked: &ldquo;Do you do the push-ups, or does she?&rdquo;"
      T.p => T.raw "Tommy replied: &ldquo;You can&rsquo;t do the midnight push-ups unless you do your regular push-ups.&rdquo;"
      T.p => T.raw "Southwick replied: &ldquo;You didn&rsquo;t answer my question.&rdquo;&nbsp;"
      T.p =>
        T.raw "That&rsquo;s nice.&nbsp; I guess, from her perspective, she"
        T.em => T.raw "might"
        T.raw "think of it as a way to keep"
        T.em => T.raw "her"
        T.raw "on"
        T.em => T.raw "his"
        T.raw "mind all day long.&nbsp; Fresh, organic, wholesome emotional ice cream with added adhesive power: an Oregon natural."
      T.p => T.raw "A sure way to keep aromas, tastes and earthquakes in mind."
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
page = new tastes_aromas_and_earthquakes
console.log T.render page.html

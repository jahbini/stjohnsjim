# 
class free_the_dbase_two extends stjohnsjimtemplate
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
      @post_free_the_dbase_two()
  # 
  # section post_free_the_dbase_two
  # 
  post_free_the_dbase_two: =>
    T.div "#post-free-the-dbase-two.article.article-type-post", id: "post-free-the-dbase-two", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Free the DBase Two"
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
      T.p => T.raw "I don&rsquo;t think Jug lives in Tommy, OR &mdash; He is a very civilized guy, retired bank teller or something. &nbsp;A real detail person, but very outgoing. &nbsp;"
      T.p => T.raw "Jug likes to collect recipes.&nbsp; It&rsquo;s his main hobby.&nbsp; He has them written on scraps of paper, margins of books, all sorts of places.&nbsp; He actually never thought of putting them on his computer until Jug found a book in the clearance bin."
      T.p => T.raw "We have a great little bookstore here in St. Johns.&nbsp; Mankind&rsquo;s greatest invention was the book.&nbsp; Damn straight."
      T.p => T.raw "The book was an introduction to computers and had lots of pictures, diagrams and explanations of equipment, connections and, yes, a free DBase II and recipe program.&nbsp; Jug read it cover to cover and finally understood the power of computers for his recipes.&nbsp; He became focussed on obsolete technology."
      T.p =>
        T.raw "I mentioned to Jug that he could use his Windows machine to do the same things, but anything more complicated than logging into gmail was way too complicated for Jug.&nbsp; End of conversation.&nbsp; Besides, the book was part of a bunch of boxes, DBase II, DOS, early Windows II (OMG, yes, there WAS a"
        T.a href: "http://en.wikipedia.org/wiki/Windows_2.0", => T.raw "Windows II"
        T.raw ", it was the Vista of the &lsquo;80s!) &nbsp;Jug does NOT pass up a bargain."
      T.p => T.raw "Jug has been on a six month expedition to run his DBase recipe program.&nbsp; He first found an old &rsquo;286 DOS machine at a church bazaar.&nbsp; I&rsquo;m very familiar with how both reliability and quirky behavior can be present in old software/hardware combinations. &nbsp; There is an exotic dance to get to these old computer&rsquo;s Nostril of Aphrodite.&nbsp; I have been dancing that dance for years, but Jug just can&rsquo;t dance.&nbsp; Isn&rsquo;t interested in any part of the dance.&nbsp; &ldquo;Just help me with this one tiny step, Jim.&rdquo;"
      T.p => T.raw "And so Jug has been asking tiny, one step at a time, questions.&nbsp; The questions are always very detailed:&nbsp; Even to the point of coming over to measure ONE voltage on one pin of his &lsquo;puter.&nbsp; Just wanted the voltage.&nbsp; It was easy to do, but when I asked what voltage we were measuring, he said &ldquo;disk power&rdquo; &mdash; I mentioned that we were probing a completely different section of the board, Jug replied that the picture in the book was pretty clear, and even though it was wrong, Jug preferred the book.&nbsp; My explanation required that Jug dance a bit.&nbsp; No go. Even when I mentioned that getting a modern printer to work with these old machines was met with the response:&nbsp; There are plenty of free printers at the Church."
      T.p => T.raw "Last week Jug was pretty unhappy.&nbsp; The recipes are piling up.&nbsp; Dammit Jim, I want these recipes.&nbsp; Will you help me get DBase II working or not? &nbsp; I replied that I&rsquo;m happy to provide as much or as little help as Jug needs.&nbsp; A hobby is a hobby."
      T.p => T.raw "But last week I asked Jug what was important here. &nbsp;Was it to get his recipes on-line? Or were old-time computers the hobby?&nbsp; Was his mission to Free the DBase Two at the end of chapter 21 the big goal? Jug is at chapter 6 now: one chapter a month is pretty good for an old beast like this, but it&rsquo;s really bad if he wants recipes.&nbsp; He replied that he was able to do it inexpensively because the program was FREE, and the one on the internet was complicated and cost $50."
      T.p =>
        T.raw "And then I asked him to add up his time and he said: &ldquo;You&rsquo;re Right.&nbsp;"
        T.strong =>
          T.em => T.raw "Money!"
        T.raw "&rdquo;&nbsp; &mdash; and then a strange thing happened.&nbsp; Jug stopped for a moment and said &ldquo;That&rsquo;s not it.&nbsp; Even if I forget the money, I want it to WORK! My way.&rdquo;"
      T.p => T.raw "I said:&nbsp; &ldquo;Thats OK.&nbsp; You get to pick your goal and I&rsquo;m happy to help, but you don&rsquo;t seem to be enjoying this.&nbsp; If the payoff from this is only a working recipe program and the expense is your enjoyment of your life, that may not be the balance you want.&nbsp; It&rsquo;s like trying to get a small advantage in traffic and getting all steamed up at the loss of some tiny ego-centered goal.&nbsp; It is better to pick goals that give a bigger payoff with less hassle.&nbsp; Work up to more complicated slowly.&rdquo;"
      T.p => T.raw "Then, Jug said &ldquo;Fuck the DBase Two.&nbsp; Let them rot in their prison.&rdquo;"
      T.p => T.raw "Today I saw Jug on the street:&nbsp; I said &ldquo;Hi Jug, Howzit!&rdquo;"
      T.p => T.raw "He said: &ldquo;See, I got a Jug!&nbsp; By the way, I&rsquo;m using that recipe program from the internet. Works fine.&rdquo;"
      T.p =>
        T.raw "Every time I see him he says &ldquo;got a jug&rdquo; or &ldquo;see, no jug&rdquo; &mdash; He explains that is how he keeps his"
        T.a href: "http://en.wikipedia.org/wiki/Juggernaut", => T.raw "Jug-or-Not"
        T.raw "nickname.&nbsp; I agree, being in control of the nicknames people have for you is a good thing, Yes?."
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
page = new free_the_dbase_two
console.log T.render page.html

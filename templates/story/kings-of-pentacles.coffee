# 
class kings_of_pentacles extends stjohnsjimtemplate
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
      @post_kings_of_pentacles()
  # 
  # section post_kings_of_pentacles
  # 
  post_kings_of_pentacles: =>
    T.div "#post-kings-of-pentacles.article.article-type-post", id: "post-kings-of-pentacles", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Kings of Pentacles"
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
      T.p => T.raw "Did you know that the reason you sneeze when you swab your ears?&nbsp; It&rsquo;s because there is a tiny puff of air that comes out of the damn thing: It only goes off in your ear &mdash;&nbsp; amazing microtechnology."
      T.p =>
        T.raw "I am helping Bambi of the City Council push this &ldquo;Amoeba Free Zone&rdquo; thing to business owners here in St. John&rsquo;s.&nbsp; I&rsquo;m on a first name basis with many of these Kings of Pentacles, Randy, Theo, Suzanne, Hamid, and possibly you,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ".&nbsp; King Suzanne?&nbsp; Yes.&nbsp; A king is more a &lsquo;function&rsquo; than a sex thing.&nbsp; It&rsquo;s what you do and why you do it."
      T.p => T.raw "The names above are struggling, stable, and upcoming business people in St. John&rsquo;s.&nbsp; They create opportunities for employment for the Knights and Pages of Pentacles.&nbsp; They create opportunities for other businesses &mdash; other kings and kingdoms.&nbsp; That&rsquo;s part of the synergy of the pentacles: why they are so important."
      T.p => T.raw "Let me explain with this insight:"
      T.p => T.raw "&quot;Gene, Gene, made a machine,"
      T.p => T.raw "&nbsp;Joe, Joe, Made it go,"
      T.p => T.raw "&nbsp;Hank, Hank, Turned the crank,"
      T.p => T.raw "&nbsp;Art, Art let a fart and blew the whole damn thing apart&quot;"
      T.p => T.raw "In Tarot terms Joe and Hank are both Pentacle guys, Joe likely a page, Hank is a Knight. &nbsp;Gene is a Wand suit guy, and Art? &nbsp;Well, Art is the Fool. &nbsp;The reason it blew apart? &nbsp;There was no King. &nbsp;The king is responsible for consequences. &nbsp;Art? &nbsp;Not so much."
      T.p =>
        T.raw "Pentacles are the"
        T.strong =>
          T.em => T.raw "Git &lsquo;er done"
        T.raw "folk.&nbsp; Kings know, find and create&nbsp;"
        T.em =>
          T.strong => T.raw "&lsquo;er"
        T.raw "&nbsp; &mdash; that&rsquo;s what Kings do.&nbsp; The actual&nbsp;"
        T.em =>
          T.strong => T.raw "Git done"
        T.raw "&nbsp;part is the domain of the Knights and Pages of Pentacles. &nbsp; &nbsp;"
      T.p =>
        T.raw "What are Knights and Pages?&nbsp; From a Tarot standpoint, let&rsquo;s just say that the Knights are the core workers and hands-on managers, and the Pages are sales, marketing, administration. &nbsp; The King knows the space.&nbsp; Knows it very well. &nbsp;The King owns the space. &nbsp;If the space is &nbsp;perfume, he knows perfume. &nbsp;If it’s baking, he knows baking. &nbsp;If it’s rocket science, he knows the tech, and keeps his cool during launch and knows what his people are telling him: A"
        T.a href: "http://www.youtube.com/watch?v=_tSFYc40c08", => T.raw "misfire"
        T.raw "is worse than a no-fire."
      T.p =>
        T.raw "Randy knows who supplies the best micro-brews.&nbsp; He stocks and runs his his place in the manner that he likes for the pleasant enjoyment of his customers. &nbsp;Randy or Hamid will give Throntle, our heroin hooker, the"
        T.a href: "http://www.urbandictionary.com/define.php?term=Bums%20Rush", => T.raw "bums rush"
        T.raw "because chalking poop words on the sidewalk hurts business.&nbsp; That&rsquo;s her.&nbsp; Neither Randy or Hamid or anyone hate Throntle, or really look down on her (well, maybe a little bit) but if she behaved (even a little bit!), she&rsquo;d be welcome.&nbsp; Like the wise say: &ldquo;Heroin isn&rsquo;t for everybody.&rdquo;"
      T.p =>
        T.raw "Totally Random question! :::&nbsp;What color are the Pope&rsquo;s Pyjamas?&nbsp; What he wears at night?&nbsp; Without looking it up! &nbsp;Cause that goes"
        T.a href: "http://www.google.com/search?rls=en&amp;q=the+popes+pajamas&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "nowhere"
        T.raw "! &nbsp;(dont bother clicking that link. &nbsp;it really wont tell you.) &nbsp;Popes make few practical decisions."
      T.p => T.raw "Kings make practical decisions.&nbsp; If you sit down with Hamid and ask &ldquo;why did you make such-and-such a decision&rdquo; &mdash; and he can sit down and explain in simple terms that even a newbie dishwasher can understand."
      T.p =>
        T.raw "Hamid, too. &nbsp;When I try to convince him that &quot;"
        T.a href: "http://wermtea.com", => T.raw "Werm Tea"
        T.raw "&quot; is the PERFECT name for a hot winter signature drink, Hamid thinks seriously and takes his time. &nbsp;More to figure out how to reel me in to sanity and not to make an actual decision."
      T.p => T.raw "Theo knows construction, and his ability to make problem solving decisions on 3 different jobs at one time is amazing.&nbsp; He just says Jesus does it. &nbsp;I think Jesus Connection is there, too. &nbsp;But if you ask him about a decision?&nbsp; Get him to slow down?&nbsp; Yes, he too, can explain in simple terms why and how a choice was made. &nbsp;Same thing with Suzanne&rsquo;s cafe.&nbsp; Practical.&nbsp; Goal directed.&nbsp; Knowledgeable.&nbsp; Aware.&nbsp; Effective."
      T.p =>
        T.raw "When a king has not got that ability to relate to his Tarot Queen (The business itself &mdash; Just think that the king is married to the kingdom), the Knights, (the workers) and the Pages (eyes and ears), the kingdom does not thrive, and dwindles.&nbsp; Dumas had great fun commenting on the French Royalty&rsquo;s difficult history.&nbsp; But Louis the 16th wasn&rsquo;t the only king to lose touch with the essentials of his job.&nbsp;"
        T.a href: "http://www.youtube.com/watch?v=_tSFYc40c08", => T.raw "A misfire is worse than a no-fire."
      T.p => T.raw "A Knight or Page can become a king when the child grows up, to claim and defend the kingdom and husband it&rsquo;s prosperity.&nbsp; Kings are mature, and comfortable with being Practical, Goal Directed, Knowledgeable, Aware and Effective.&nbsp; Because business is business."
      T.p =>
        T.raw "But when one of those essential elements is missing: being Aware, Knowledgeable.&nbsp; Not recognizing practicality. You name it. Then it&rsquo;s French Revolution time, or &ldquo;"
        T.a href: "http://www.google.com/search?rls=en&amp;q=Lord+save+us+from+the+wrath+of+the+Viking&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Lord save us from the wrath of the Vikings"
        T.raw "&rdquo; or &ldquo;"
        T.a href: "http://www.google.com/search?rls=en&amp;q=bankruptcy+rise&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "there isn&rsquo;t much call for buggy-whips anymore"
        T.raw "&rdquo;"
      T.p => T.raw "When it comes to business, it takes a king to make king sized decisions with king sized consequences: a King of Pentacles. &nbsp;You now have an idea of what a King must do and why."
      T.p => T.raw "What do you want on your Tombstone? &nbsp;Put this one on mine: &quot;He had a pleasant thought as he went into the light&quot; – and he &quot;never accepted money from amoebas!&quot;"
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
page = new kings_of_pentacles
console.log T.render page.html

# 
class simple_scientific_reality extends stjohnsjimtemplate
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
      @post_simple_scientific_reality()
  # 
  # section post_simple_scientific_reality
  # 
  post_simple_scientific_reality: =>
    T.div "#post-simple-scientific-reality.article.article-type-post", id: "post-simple-scientific-reality", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Simple Scientific Reality"
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
        T.raw "I had another dentist appointment.&nbsp; It took about two hours for them to find the right anasthetic.&nbsp; As the third round of injections kicked in I had enough time to read the National Scientific magazine.&nbsp; In there it mentioned that Science now believes"
        T.a href: "http://www.scientificamerican.com/article.cfm?id=is-time-an-illusion", => T.raw "time is an illusion"
        T.raw "."
      T.p =>
        T.raw "Ha, They Indian mystics have been pushing that"
        T.a href: "http://en.wikipedia.org/wiki/Maya_(illusion)", => T.raw "reality is illusion"
        T.raw "crap for centuries:&nbsp; Is that all you got Mr. Science?&nbsp; (Science now believes? – Can a non-human believe? Doesn’t"
        T.a href: "http://www.dougobriensblog.com/reverse-meta-model-selectional-restriction-violation/", => T.raw "make any sense"
        T.raw ", but we swallow it anyway.)"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "No, for science to be science, it has to be duplicatable.&nbsp; So, Mr. Science, duplicate space and time.&nbsp; Not simulate. (Can an author talk to a mythical Mr. Science?&nbsp; Doesn’t make any sense, but we swallow it anyway.)"
      T.p => T.raw "&nbsp;"
      T.p =>
        T.raw "So reality is an illusion after all.&nbsp; Wow.&nbsp; Thank goodness. &nbsp;"
        T.em => T.raw "And we paid these guys all these centuries for this?"
        T.raw "&nbsp; And then the anesthetic kicked in and the pain became an illusion, too. Thank goodness."
      T.p => T.raw "&nbsp;"
      T.p =>
        T.raw "I’m at the James John Cafe as I write this, and they just handed me my chops.&nbsp; Dad-GumIt!&nbsp;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I come here today as a flaming pillar of creativity, and I can’t concentrate on the writing when the food is this good.&nbsp; Grrr. &nbsp; Suzanne countered (It’s her counter): &quot;there would be NO writing at all without the great vittles, and Jim, you should be dad-gum grateful to even get inside a secret location like this.&quot;"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "I’m getting together another grub-stake expedition up the entrepreneurial rivers of technology.&nbsp; Thar’s gold in them thar&nbsp; business opportunities.&nbsp; Biz-ops. Over at the Tropic of Oregon they have grow-ops.&nbsp; I look for push-ops."
      T.p => T.raw "&nbsp;"
      T.p => T.raw "Push-ops.&nbsp; I push the buttons now, and the buttons I push make a ‘puter do something fun, interesting or useful far into the future: at the push of a button.&nbsp; That’s what programmers do.&nbsp; It takes months and an 18 hour a day meditative concentration that’s akin to zen chess. &nbsp;Makes me want to go &quot;Yeee-Haaa&quot;.&nbsp; Just like a portrait painter, tell me what you want the machine to do, and I’ll write the program. On time, under budget and outperforming the specifications.&nbsp; Web applications. No smaller projects than 6 man-months.&nbsp; Just don’t expect me to pay attention to anything else."
      T.p => T.raw "&nbsp;"
      T.p => T.raw "And what would I be missing in my gone-a-zen state?&nbsp; I’d be missing out on some exciting stuff over at the North End Galleries: an underground pool-table of energy bouncing around in worker chaos lines, all choreographed to come together this weekend (Oct 16, 2010).&nbsp; Show, Art, Music, Drama, Studios, Blessings and likely, Cursings."
      T.p =>
        T.raw "I tackled one of the chaosographers: Orion, surprisingly beltless and earthbound, and asked him for the facts: &quot;"
        T.a href: "http://en.wikipedia.org/wiki/Dragnet_(series)", => T.raw "what are the facts, just the facts, sir"
        T.raw ".&quot; &nbsp;He said: &quot;Doors open @ 1:00 P.M. Music starts at 2:00 12 bands All Ages Local heroes - Likity, Cheap Meats, Teflon, and Mannaquin Head! $3.00&quot; – He disavous any reports of half-pipes, or any pipes at all.&nbsp;"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "Stuff for the young,&nbsp; Stuff for the trendy, Stuff to get St. John’s Moving! &nbsp;That’s the hope."
      T.p => T.raw "&nbsp;"
      T.p =>
        T.raw "Now lissen up,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I have basically getting disbelief from my readers about, well, basically, the Three Wise Men over at Gunas Lp – Let me inform youse guys:"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "Tommy is professor of ethics at Waterfront University.&nbsp; He has a specialty in Public Speaking and holds the coveted &quot;mouthpiece&quot; chair."
      T.p => T.raw "&nbsp;"
      T.p =>
        T.raw "Roger has a Ph.D. in Preventative Maintenance and teaches on-line at &quot;Safety First&quot; University.&nbsp; Roger says: &quot;Safety First is it’s own middle name.&quot; He is working on-line for a second Ph.D in"
        T.em => T.raw "Minding Your Own Fucking Business"
        T.raw "."
      T.p => T.raw "&nbsp;"
      T.p => T.raw "Southwick has a M.A. in Yoo-Hoo Koo-Koo from Sewage Newage University.&nbsp; Southwick says: &quot;I see archetypes…&nbsp; Everywhere.&quot;"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "&nbsp;"
      T.p => T.raw "&nbsp;"
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
page = new simple_scientific_reality
console.log T.render page.html

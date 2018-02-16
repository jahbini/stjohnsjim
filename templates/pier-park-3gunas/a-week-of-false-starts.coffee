# 
class a_week_of_false_starts extends stjohnsjimtemplate
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
      @post_a_week_of_false_starts()
  # 
  # section post_a_week_of_false_starts
  # 
  post_a_week_of_false_starts: =>
    T.div "#post-a-week-of-false-starts.article.article-type-post", id: "post-a-week-of-false-starts", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "A Week of False Starts"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/pier-park-3gunas/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "&gt; I got a huge backlog of one or two sentence introductions to this issue of the St. John’s but none with even a hope of kick-starting my new MuseCycle 900."
      T.p =>
        T.raw "&gt; -Everything from"
        T.a href: "http://www.thesun.co.uk/sol/homepage/news/3313331/Reindeers-like-Rudolph-and-Blitzen-get-high-on-magic-mushrooms.html", => T.raw "Raindeer Drug Raids"
        T.raw ", The"
        T.a href: "http://news.sky.com/skynews/Home/World-News/Jesus-Was-An-Aids-Victim-South-African-Pastor-Causes-Outrage-With-Controversial-HIV-Sermon/Article/201009115712929", => T.raw "AIDS of Jesus"
        T.raw "(Look, I couldn’t even dream up that stuff!) I even over heard the phrase &quot;I’m getting a degree ‘cause I’m not no douchbag&quot; come out of the TV! But nothing worked."
      T.p => T.raw "&gt; – Help. I need Wisdom, Inspiration, Continuity, Keen Emotions, Dialog, Compassion. I need my muse, queen of the seven chakras and nine tantras: W.I.C.K.E.D. Compassion."
      T.p =>
        T.raw "You see, Tommy convinced me that I had so many projects that I needed to get a replacement for the old-school goddess muse and get a model that pumps out greeting cards, facebook wall comments, ad copy for rent-a-used-fencepost business (that last is a trendy business on the Malibu of St. John’s. — There is a ready made library of twigs, sticks and branches in Baltimore Wood). It just seemed to make business sense. Tommy said he had connections with an overseas supplier."
        T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", => T.raw "soto says: Lets start a community library of tools from old construction projects. People can check out drills, saws and stuff!"
      T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", =>
        T.raw "voce says: So how is that different than what we got"
        T.a href: "http://www.northportlandtoollibrary.org/", => T.raw "already"
        T.raw "?"
      T.p =>
        T.raw "The MuseCycle 900 was a mess to put together, and the parts and packing are scattered around my mind. I got most of the steps completed and finally got around to reading the instructions. It said: “"
        T.em => T.raw "Attention: requires operation by authentic classic goddess muse"
        T.raw ".”"
      T.p => T.raw "Tommy had scammed me! Can you believe it? Scammed by my own comic creation? I know it’s impossible, but there is simply no other explanation. When the muse don’t sing, ALL explanations work. So believe me."
      T.p => T.raw "I rushed over to Tommy, OR, and knocked. Tommy was hiding in the back. He does that sometimes, in case it’s a bible salesman or old girl friend. I thought: &quot;Tommy, you simpleton, you have no idea who you are dealing with, I’m the fucking AUTHOR!&quot;"
      T.p =>
        T.raw "So I unleashed my signature ninja move, the hallowed"
        T.em => T.raw "{{{roar:Roar of the Lion}}}"
        T.raw ": “Southwick, open the door. Now. Where’s Tommy! What’s he done to my muse! Where is Wickie?”"
      T.p => T.raw "Southwick opened the door, and I went out back where Tommy was painting racing stripes on a caterpillar tractor."
      T.p => T.raw "Me: “OK, Tommy, bust loose with the truth, buddy. I’m the author. So help me, I’ll start writing you in the style of Faulkner! You will only be a hollow object of pity. The scum of mythology.”"
      T.p => T.raw "Tommy replied: “Oh, no, not that… OK, well you and I thought it would be a good idea to juice up the voltage on the writing thing, and you got all that tree-hugger organic muse fodder and everything.”"
      T.p =>
        T.raw "Me: “Muse Fodder! You cant talk about"
        T.em => T.raw "Wicked Compassion"
        T.raw "that way! A muse is a delicate and sophisticated deity of perfection — able to distill reality into wisdom”"
      T.p => T.raw "Tommy replied: “Don’t let no muse fool you: They all want one thing. Anyway, I got her here. She’s no use to me, she doesn’t write porn.”"
      T.p => T.raw "Me: “Tommy, if she is going to write porn, she ain’t gonna do it for you, buddy. No more mucking with my muse again”"
      T.p => T.raw "–“Not so fast, bub, I’ll make Tommy a porn star if I want to. Look at him there, he’s balancing a beer on his pects, no, let’s make it an outboard motor. Yup, a much funnier image than reality.”"
      T.p =>
        T.raw "Me - “Oh, Wickie, where you been, I’m missing you so much…”"
        T.blockquote ".right.key-comment.voce.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment voce right-align h6 p2 bg-white border rounded", => T.raw "voce says: Did he just call her ‘Wickie’?!"
        T.blockquote ".right.key-comment.soto.right-align.h6.p2.bg-white.border.rounded", class: "right key-comment soto right-align h6 p2 bg-white border rounded", =>
          T.raw "soto says: Just imagine what"
          T.em => T.raw "she"
          T.raw "calls him!"
      T.p => T.raw "Wickie - “Well, you could stop chasing me! I’ll come out when I feel safe and want to have a fun time. And more Talking Heads, and Van Morrison, too.”"
      T.p => T.raw "Me - “I’ve got a MuseCycle 900!”"
      T.p => T.raw "Wickie - “That cheap ass thing, I’ll bet Tommy got it from one of those Chinese Hi-tech sites where he gets his &quot;prescriptions&quot;. Watch out for that stuff!"
      T.p => T.raw "– If you are a real author, you’ll get me the MuseCycle 902. It’s got the GB Shaw option. Or would you like Two Weeks of False Starts?”"
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
page = new a_week_of_false_starts
console.log T.render page.html

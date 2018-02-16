# 
class pentacles extends stjohnsjimtemplate
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
      @post_pentacles()
  # 
  # section post_pentacles
  # 
  post_pentacles: =>
    T.div "#post-pentacles.article.article-type-post", id: "post-pentacles", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Pentacles"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/tarot/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      @pentacles_dilligent_earthy_prosperity_bound_()
      T.p => T.raw "The pentacles are workers creating value through craft, labor and the bounties of nature. Pentacle energy sustains the sacred space. On the scale of Maslow’s Heirarchy, the pentacles fill up most of the lower rungs - Physiological needs, economic security, and are enablers for other rungs: family, belonging, education. Maslow’s higher stages of actualization: authenticitity, meaningfulness, creativity, en-theos, are not inherently pentacular."
      T.p => T.raw "Pentacle efforts are totally under the control of swords, that is, pentacles need the protection afforded by external laws and internal vigilence. Swords protect the sacred spaces where pentacles produce the fruit. Swords steal and destroy the fruits and capabilites of the pentacle. An uneasy balance."
      @ace_of_pentacles()
      T.p =>
        T.strong =>
          T.em => T.raw "The realization of worth."
        T.raw "You have discovered the basis for continued survival and comfort. It may be a talent you have, a family recipe passed down through the ages, or a job offer for you. You will survive. Know it well so you may make this the cornerstone of your house of life."
      @two_of_pentacles()
      T.p =>
        T.em =>
          T.strong => T.raw "The dance of capabilities."
        T.raw "The worth of a single pentacle is more than doubled by the interplay of two. Dance the dance of integration of your worth. The second pentacle may be another of your own capabilities or the pentacle of another. The dance of integration of the two is paramount. Love the dance."
      @three_of_pentacles()
      T.p =>
        T.em =>
          T.strong => T.raw "The job."
        T.raw "You have found an employer. Your work is appreciated and you gain from that. Your employer sets the standards for your work and you do your best to meet those standards. You employer also sets the value and all else for your work."
      T.p => T.raw "Steady employment, but with little ability modify the agreement. Your worth is very much dependent on the situation and the wishes of “the man”"
      T.p => T.raw "When I visited the bridge the last time, the work had been already completed. By getting my level three contact privileges, I’m so glad that I got the chance to get here again just after the work started. I’m really enjoying the hub-bub of the construction. Totally awesome."
      T.p => T.raw "Today, Dizzy and I walked on to the site. A couple of workers said that I should have a helmet for the dog, and laughed, but mostly everybody just did their work. I saw one guy high up on the cables of the bridge. He was steady, but nimble: goat like – clearly a master of the high wires."
      T.p => T.raw "I asked around and found that this guy had quite a reputation for being nimble. After nightfall, anything above the first floor had better be double locked, including your daughter."
      T.p => T.raw "As lunchtime came around, I sat with him for a few moments and asked about his job. His name was Mike Messer, or something like that, and he kept humming tunes from the “Threepenny Opera,” a play that was popular that year."
      T.p => T.raw "“Yeah, I love the plays, my wife Polly used to do a little acting; She was pretty good, and I do a little rigging backstage, you know, lights and scenery: I get to watch the rehearsals from the catwalks.”"
      T.p => T.raw "“Show me the way to the next whiskey bar. Ha, that fits. That’s me, except right now: I got this pretty good job on the bridge. The job will last for about another year and a half, and then bingo, I have to find another. I’m paid pretty good, not like most of the other smucks. I work up high and I get paid for it. Still, just like those other guys, I don’t get no say in how much I get paid, just hope I can work enough hours and get by. You gotta do what you gotta do, and when times are bad, you just have to hunker down and be OK with bad."
      T.p => T.raw "Like what happened to Fred a couple of months ago: got conked pretty good, he did. He was out for a couple of days and when he came back, he couldn’t keep his balance up high. He was a good guy, and knew some people, ya know – so he does what he has to do, ya know? It’s the same with all of us. We like the pay, but when it dries up or you get bunged up, it’s gone."
      T.p => T.raw "Just then a foreman came around and handed Mike a clipboard. Mike took an sheet of paper and signed the roster on the clipboard."
      T.p => T.raw "Mike made a face, composed himself and went on: “And all the rules: They keep coming down with changes. Cant do this, gotta wait for that, get prepared for a big thing, and then wait. I’m glad this wasn’t a work stoppage notice. Sometimes we have to wait for some part to come from the other side of the ocean and all that time we don’t get paid. It’s always like that – The big guys make the decisions, and we have to take it on the chin. And then “The next whiskey bar” is just where you can find me. And maybe like some other things in that play, ya know? I’m not above the next guy, and when times get tough, you gotta take every option that comes along, ya know?"
      T.p => T.raw "Hey, buddy, I can get you a job: they’re looking for someone on the hod-carrier circuit. Pay’s pretty good, and I can get you a job on my recommendation if you make it worth my while, if you know what I mean. You’d have to lose the dog. Buddy, you’d be a Fool to pass this one up."
      T.p => T.raw "Hey, it’s been good talkin’ to ya. The whistle just blew: I have to get back up to guide the big spool as it lays out the top cable. I’m one of three guys that can do the job. Pretty good pay, like I say, but if I’m not on top of it, the bosses will put someone else up there. There’s always some stupid kid that will risk his neck, but the bosses don’t care if he lives or dies. It’s all the same to them."
      T.p => T.raw "As he disappeared up the catwalk, I heard him shout down: “Lose the dog, and I can get you some work, just tell ‘em Mackheath sent you”"
      @four_of_pentacles()
      T.p => T.raw "You are concerned that your resources are sufficient for your needs now or in the future."
      @five_of_pentacles()
      @six_of_pentacles()
      @seven_of_pentacles()
      @eight_of_pentacles()
      @nine_of_pentacles()
      @ten_of_pentacles()
      @page_of_pentacles()
      @knight_of_pentacles()
      @queen_of_pentacles()
      @king_of_pentacles()
  # 
  # section king_of_pentacles
  # 
  king_of_pentacles: =>
    T.h2 "#king-of-pentacles", id: "king-of-pentacles", => T.raw "King of Pentacles"
  # 
  # section queen_of_pentacles
  # 
  queen_of_pentacles: =>
    T.h2 "#queen-of-pentacles", id: "queen-of-pentacles", => T.raw "Queen of Pentacles"
  # 
  # section knight_of_pentacles
  # 
  knight_of_pentacles: =>
    T.h2 "#knight-of-pentacles", id: "knight-of-pentacles", => T.raw "Knight of Pentacles"
  # 
  # section page_of_pentacles
  # 
  page_of_pentacles: =>
    T.h2 "#page-of-pentacles", id: "page-of-pentacles", => T.raw "Page of Pentacles"
  # 
  # section ten_of_pentacles
  # 
  ten_of_pentacles: =>
    T.h2 "#ten-of-pentacles", id: "ten-of-pentacles", => T.raw "Ten of Pentacles"
  # 
  # section nine_of_pentacles
  # 
  nine_of_pentacles: =>
    T.h2 "#nine-of-pentacles", id: "nine-of-pentacles", => T.raw "Nine of Pentacles"
  # 
  # section eight_of_pentacles
  # 
  eight_of_pentacles: =>
    T.h2 "#eight-of-pentacles", id: "eight-of-pentacles", => T.raw "Eight of Pentacles"
  # 
  # section seven_of_pentacles
  # 
  seven_of_pentacles: =>
    T.h2 "#seven-of-pentacles", id: "seven-of-pentacles", => T.raw "Seven of Pentacles"
  # 
  # section six_of_pentacles
  # 
  six_of_pentacles: =>
    T.h2 "#six-of-pentacles", id: "six-of-pentacles", => T.raw "Six of Pentacles"
  # 
  # section five_of_pentacles
  # 
  five_of_pentacles: =>
    T.h2 "#five-of-pentacles", id: "five-of-pentacles", => T.raw "Five of Pentacles"
  # 
  # section four_of_pentacles
  # 
  four_of_pentacles: =>
    T.h2 "#four-of-pentacles", id: "four-of-pentacles", => T.raw "Four of Pentacles"
  # 
  # section three_of_pentacles
  # 
  three_of_pentacles: =>
    T.h2 "#three-of-pentacles", id: "three-of-pentacles", => T.raw "Three of Pentacles"
  # 
  # section two_of_pentacles
  # 
  two_of_pentacles: =>
    T.h2 "#two-of-pentacles", id: "two-of-pentacles", => T.raw "Two of Pentacles"
  # 
  # section ace_of_pentacles
  # 
  ace_of_pentacles: =>
    T.h2 "#ace-of-pentacles", id: "ace-of-pentacles", => T.raw "Ace of Pentacles"
  # 
  # section pentacles_dilligent_earthy_prosperity_bound_
  # 
  pentacles_dilligent_earthy_prosperity_bound_: =>
    T.h1 "#pentacles-dilligent-earthy-prosperity-bound-", id: "pentacles-dilligent-earthy-prosperity-bound-", => T.raw "Pentacles – Dilligent. Earthy. Prosperity bound."
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
page = new pentacles
console.log T.render page.html

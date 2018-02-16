# 
class you_cant_always_get_what_you_want extends stjohnsjimtemplate
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
      @post_you_cant_always_get_what_you_want()
  # 
  # section post_you_cant_always_get_what_you_want
  # 
  post_you_cant_always_get_what_you_want: =>
    T.div "#post-you-cant-always-get-what-you-want.article.article-type-post", id: "post-you-cant-always-get-what-you-want", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "You cant always get what you want"
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
        T.raw "I want the chaos to stop. In fact,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", it has been so chaotic I may not be able to express what I need to, and if you get lost, just go to the really important section labelled &quot;Bam!&quot; (authors are never supposed to do what I just did: is that"
        T.em => T.raw "bold"
        T.raw ", or what? Fuck you, Mr. Critic.)"
      T.p => T.raw "I’ve been in a sea of chaos all last week. It is as if I’ve belly flopped into the swimming pool and came up spluttering just as my splash bounces back into my eyes, mouth and gut after it bounces from the sides of the pool."
      T.p =>
        T.raw "&gt; OK,"
        T.a href: "http://dharma", => T.raw "&gt; dharma"
        T.raw "&gt; , which is essentially the present tense of karma; I’ll be a good boy, because what goes around comes around. Chaos begets chaos. Chaos begets judgement. Judgement and the &quot;honor&quot; of ego begets revenge killings. And I hate revenge killings. Makes my fucking blood boil. Just thought you might want to know."
      T.p =>
        T.raw "It’s just like that old song “Dry Bones,”"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", are you feeling the chaos? The St. John’s Lighthouse may shine into your life from time to time, that’s my job, and I need to ask, you know."
      T.p => T.raw "&gt; Sandy and Southwick are kicking my butt because Sandy wants to sing tenor, and St. John’s Johnny wants to be boiled in oil. Thinks that will help him channel Torqumada or some crap like that."
      T.p =>
        T.raw "&gt; The Tropic of Oregon has come down with a serious case of the “dicks” — I’m not sure what that is, but dicks are not allowed around green elephants."
        T.em => T.raw "&gt; ever"
        T.raw "&gt; . Don’t ask. Green Elephants are nuns. End of conversation. Talk to the hand."
      T.p =>
        T.raw "&gt; Kings and Pages tell me dire tales of hostile corporate take-overs that"
        T.strong =>
          T.em => T.raw "&gt; pale"
        T.raw "&gt; in the light of Nobrow’s Heart attack. WTF?!?!!! Throntle may be the only one who can help him. We hug under the light of the light of the St. John’s Clock Tower. And then it hits me: Am I to be the hospice care for Nobrow? Throntle? They are Christ’s &quot;"
        T.a href: "http://www.columbia.edu/cu/augustine/arch/teresa94.html", => T.raw "&gt; least of these"
        T.raw "&gt; &quot; and have shared their stories with me. I’m beholden. Fuck."
      T.p => T.raw "Is that enough chaos for you? But the James John Cafe opened today. Amen."
      T.p =>
        T.raw "– Suzanne’s Kingdom, The James John Cafe, is where I came up for breath after a week of choppy seas. Spluttering as I take a breath, I see the oncoming wave, and It’s moving in fast in the form of folks I love asking for time. I tread interpersonal water for a bit, and put folks at ease, or as much ease as I may be allowed as the bit-part I play in there lives: your life too, my friend,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "."
      T.p =>
        T.raw "And now"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I can’t get what I want:"
      T.p =>
        T.raw "&gt; Which is a cease of the"
        T.em => T.raw "&gt; CHAOS"
        T.raw "&gt; ! ( Thank You Very Much, Suzanne! As I pray you won’t close your doors to me, most imperious highness of the gateway to comfort food… but you could play the Kinks once in a while, too.)"
      T.p => T.raw "So I grumble as I have no ideas for what to write today. I’m finally ending up in my daily escape pod at Slim’s Restaraunt and Lounge. I sit down. Hamid shows me Aloha. I remove my chaos proof vest so I may write, and all you get is the stuff above. (Hey! I’m just doing the best I can.)"
      @bam_()
      T.p => T.raw "And BAM!!! it happens when I least expect it. As I’m contemplating the chaos of all I see and know, as I’m trying to pull all the loose strings together —"
      T.p =>
        T.raw "&gt; Slim’s plays"
        T.a href: "http://www.youtube.com/watch?v=YrLk4vdY28Q", => T.raw "&gt; Leonard Cohen’s Hallelujah"
        T.raw "&gt;  (authors note: I really apologize for the embedded advertisement in this link, but if rendering undo caesar is the only way I can give you this priceless pearl, then so be it)"
      T.p => T.raw "And I gain great tranquility as I listen. The chaos is unimportant. It will pass. I, and you, will handle the chaos with our own great gifts of wisdom and adaptation."
      T.p => T.raw "The chaos is NOT over. It is not going away. We are adults. We will deal with it the very best we can. We protect children, our knights and pages from the chaos as best we are able as Kings, and later, as we grow to be Emperors."
      T.p =>
        T.raw "You cannnot guarantee 100% protection. Even God only could give Job the consolation prize. But the good news?"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", we can deal with and adapt to the chaos. Hallelujah"
      T.p => T.raw "I get what I need. You get what you need."
      T.p => T.raw "The knowledge that I can handle this chaos. It, too, will pass, and I will be the better because of it."
  # 
  # section bam_
  # 
  bam_: =>
    T.h2 "#bam-", id: "bam-", => T.raw "Bam!"
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
page = new you_cant_always_get_what_you_want
console.log T.render page.html

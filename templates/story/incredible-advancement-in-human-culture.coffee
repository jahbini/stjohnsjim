# 
class incredible_advancement_in_human_culture extends stjohnsjimtemplate
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
      @post_incredible_advancement_in_human_culture()
  # 
  # section post_incredible_advancement_in_human_culture
  # 
  post_incredible_advancement_in_human_culture: =>
    T.div "#post-incredible-advancement-in-human-culture.article.article-type-post", id: "post-incredible-advancement-in-human-culture", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Incredible Advancement In Human Culture"
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
        T.raw "Yes, and when I have a major announcement, I do it here first,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "."
      T.p => T.raw "You might agree that a major advancement in civilization is worthy of announcement. Today I&rsquo;m announcing the Domestication of Cattle."
      T.p => T.raw "Before we had the ability to gather and herd these animals, we must have just&hellip;"
      T.p =>
        T.raw "I have no idea. &nbsp;What about you,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "? &nbsp;Got any idea what life was like back then?"
      T.p => T.raw "Your guess is as good as mine, but maybe mine is more wobbly. &nbsp;What do you think? Roving? Hunting? Foraging? What?"
      T.p => T.raw "Could it be the high-tech version?"
      T.p =>
        T.strong => T.raw "Tom"
        T.raw ": &ldquo;Hey, Hank, you got a whole bunch of those big four legged things milling around.&rdquo;"
        T.br()
        T.strong => T.raw "Hank"
        T.raw ": &ldquo;Yeah, they ruined my shot. Check out my PentaNicon 20 MegaPix with auto-photoshop image sweetening. Guaranteed to turn your wife into the Mona Lisa.&rdquo;"
        T.br()
        T.strong => T.raw "Tom"
        T.raw ": &rdquo;Yeah, awesome pix, but what about these big four legged things. We don&rsquo;t have to run them down anymore, they are right here.&rdquo;"
        T.br()
        T.strong => T.raw "Hank"
        T.raw ": &ldquo;Yeah, I wanted to get a picture of one by this tree here at dawn, so I used some #023 Hawser wove Hemp to drag one over here. Dang-near tore up my transmission on my Hemi320.&rdquo;"
        T.br()
        T.strong => T.raw "Tom"
        T.raw ": &ldquo;You"
        T.em => T.raw "tied it up"
        T.raw "?!&rdquo;"
        T.br()
        T.strong => T.raw "Hank"
        T.raw ": &ldquo;Yeah, then I waited till morning. The damned thing started mooing and Shit! by sun up there were a whole bunch of them milling around. Totally ruined my picture.&rdquo;"
        T.br()
        T.strong => T.raw "Tom"
        T.raw ": &ldquo;Hey look, this one is a mama. I bet we can do lots of things with these animals. Seem pretty strong. I know they are good eating.&rdquo;"
        T.br()
        T.strong => T.raw "Hank"
        T.raw ": &ldquo;Hey, Take &lsquo;em, they&rsquo;re all yours buddy.&rdquo;"
      T.p => T.raw "Or what about the valley girl version?"
      T.p =>
        T.strong => T.raw "Sue"
        T.raw ": &ldquo;I had this totally rad inspiration yesterday! I was sleeping under a tree and one of these things started nibbling the grass near me. Woke me up.&rdquo;"
        T.br()
        T.strong => T.raw "Nancy"
        T.raw ":&rdquo;OMG. You must have freaked!&rdquo;"
        T.br()
        T.strong => T.raw "Sue"
        T.raw ": &ldquo;No, I just grabbed a handful of grass and held it out! And guess what, she ATE IT!!&rdquo;"
        T.br()
        T.strong => T.raw "Nancy"
        T.raw ": &rdquo;EEWWW, nasty.&rdquo;"
        T.br()
        T.strong => T.raw "Sue"
        T.raw ": &ldquo;Yes, but after a couple more of handfuls, the thing started following me around. She wanted MORE.&rdquo;"
        T.br()
        T.strong => T.raw "Nancy"
        T.raw ": &ldquo;Following you!?"
        T.em => T.raw "My"
        T.raw "daddy can get you a T.R.O. Here is his card.&rdquo;"
        T.br()
        T.strong => T.raw "Sue"
        T.raw ": &ldquo;Well, she wasn&rsquo;t hurting me, and I just kept leading her up a little canyon where there was lots of grass. I think she&rsquo;s going to have a baby!&rdquo;"
        T.br()
        T.strong => T.raw "Nancy"
        T.raw ": &ldquo;OMG, did you hear? There are lots of them in there today."
        T.em => T.raw "Ewww"
        T.raw ". That was you? i WAS going to ask you over to crush berries together with"
        T.em => T.raw "MY"
        T.raw "friends, but you can forget that now!.&rdquo;"
        T.br()
        T.strong => T.raw "Sue"
        T.raw ": &ldquo;Really? OK. This animal thing could be useful. Maybe a way to keep the boys at home, if they don&rsquo;t have to run out and kill these things. I won&rsquo;t have to worry about crushed berries!&rdquo;"
      T.p => T.raw "Or even momie’s greatest crush?"
      T.p =>
        T.strong => T.raw "Alan"
        T.raw ": &ldquo;Mommie, look what followed me home from school today.&rdquo;"
        T.br()
        T.strong => T.raw "Mom"
        T.raw ": &ldquo;Alan, I have told you time and time again, we just can not have one of these wild things in our house: The flies and the poop!&rdquo;"
        T.br()
        T.strong => T.raw "Alan"
        T.raw ": &ldquo;Awww, Mom, I&rsquo;ll be real careful and clean up after her in the cave!&rdquo;"
        T.br()
        T.strong => T.raw "Mom"
        T.raw ": &ldquo;No Way, you are NOT bringing that animal into the cave. Don&rsquo;t even think of it.&rdquo;"
        T.br()
        T.strong => T.raw "Alan"
        T.raw ": &ldquo;Yea!!! you mean I can keep her outside of the cave? Oh, mom, you are the best!&rdquo;"
        T.br()
        T.strong => T.raw "Mom"
        T.raw ": &ldquo;And if any more show up, you had better be able to find something for them to eat.&rdquo;"
        T.br()
        T.strong => T.raw "Alan"
        T.raw ": &ldquo;Oh, Yes, Mom, I&rsquo;ll take real good care of &lsquo;em.&rdquo;"
      T.p => T.raw "But consider this from nebuchadnezzar and sons?"
      T.p =>
        T.strong => T.raw "Researcher"
        T.raw ": &ldquo;We have found that if you restrict the movement of &nbsp;these bovine things they tend to gather together and become calmer. They seem to move slowly toward food, whether offered by hand or in nature. The meat, milk, body parts can be really useful, and they will pull and move heavy things for us.&rdquo;"
        T.br()
        T.strong => T.raw "Executive"
        T.raw ": &ldquo;Great. We will put in a ten year, no: &nbsp;thousand year, &nbsp;No better yet a"
        T.em => T.raw "continual"
        T.raw "study on the best ways to market and monetize this thing: What did you call it? &nbsp;Analysis and cost benefit ratios for future utility of bovine critters? &mdash; No that will never catch on. How about &ldquo;Domestication of Cattle&rdquo; ? Yeah, that&rsquo;s sweet. The PR department will love it.&rdquo;"
      T.p => T.raw "No matter how the domestication of cattle happened, imagine the improvement in life for early humans. &nbsp;We have milk, food, clothing and power. &nbsp;All wrapped in 2,000 pound packages. &nbsp;No batteries required.&nbsp;"
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
page = new incredible_advancement_in_human_culture
console.log T.render page.html

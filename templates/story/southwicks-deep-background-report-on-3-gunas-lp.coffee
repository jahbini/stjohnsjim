# 
class southwicks_deep_background_report_on_3_gunas_lp extends stjohnsjimtemplate
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
      @post_southwicks_deep_background_report_on_3_gunas_lp()
  # 
  # section post_southwicks_deep_background_report_on_3_gunas_lp
  # 
  post_southwicks_deep_background_report_on_3_gunas_lp: =>
    T.div "#post-southwicks-deep-background-report-on-3-gunas-lp.article.article-type-post", id: "post-southwicks-deep-background-report-on-3-gunas-lp", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Southwick's Deep Background Report on 3 Gunas Lp"
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
      @southwick()
      T.p => T.raw "Southwick, over at 3 Gunas Loop lives in shared housing. There are two reasons he does that."
      T.ol =>
        T.li => T.raw "He is serving his country in the wit-less protection program."
        T.li => T.raw "It’s what he can afford."
      T.p => T.raw "and lo and behold, there is a fabulous side-effect! He has dedicated his life to spiritual pursuits and has obtained an advanced degree in “yoo-hoo-coo-coo” from Newage University."
      T.p => T.raw "He gets to scope out the spiritual interactions of Roger, Tommy, and until recently, Wanda. Although Wanda has not been on the scene for a few months, she figures prominently in a continuing battle of ex-lovers. (Author’s note: Southwick dishes me this great stuff for a budding writer. I love it.)"
      @roger()
      T.p => T.raw "Roger is the Navy guy. Navy Retired. Quartz crystal on-time no nonsense enlisted background. After that he worked AGAIN and got a full retirement from a Portland ironwork. If Roger does something, you know it’s totally A-OK (except for the divorce thing.) Mr. no-problem seldom complaining, but often griping. His life is OK, but he wonders about the competence of people he has to deal with. Don’t we all."
      T.blockquote =>
        T.p =>
          T.raw "Roger has a PhD in Preventative Maintanence from the school of hard knox, and is working on a second on-line PhD in"
          T.em => T.raw "&gt; minding your own business"
          T.raw "&gt; . Southwick says most of Roger’s class material kind of looks like Tetris or something."
      @tommy()
      T.p =>
        T.raw "Tommy is an interesting guy. We can only wonder about his early years. Swarthy, a bit like"
        T.a href: "http://www.google.com/images?rls=en&amp;q=stromboli+pinocchio&amp;oe=UTF-8", => T.raw "Stromboli"
        T.raw ", but with a nordic last name. Raised mostly in New Jersey, but somehow brought out to Portland by Geppetto, who sold his woodcarving business and bought quite a LOT of land here. High priced industrial land. Or, at least that’s the fog that Tommy puts out. Blustery about even very small things out of place. Snores like a razorback in rut. Tommy is an excellent mechanic, loves to take anything apart, but only can put barges, ships, cars and engines back together."
      T.blockquote =>
        T.p => T.raw "Tommy is a professor of workplace ethics for Waterfront U. Mostly there are none. Ethics, that is. He holds the coveted “Mouthpiece” chair."
      @wanda()
      T.p => T.raw "Wanda. Very young, trying to train to be a medical clerk without much help in life. Hard childhood as an after-thought latchkey, foster kid. Red hair, tolerable smart but not very pretty, slightly anorexic, no clue about the wider world, very reactive verbally, but also very guarded."
      T.blockquote =>
        T.p => T.raw "Wanda is getting a B.S. in tactical retaliation. Her early work is very promising."
      T.p =>
        T.raw "Wanda left Tommy in May or so. Since then they have been playing some petty games with each other. She wants to milk Tommy for things like car repairs. Tommy wants to lure her back to his bed with a big pocketbook that is just out of her reach."
        T.br()
        T.raw "Tommy has steamed and seethed. Losing Wanda hit him hard: he wanted to be the stallion that could tame a 21 year old. Mostly quiet recently but then, one night at 10:30PM, Wanda is"
        T.em =>
          T.strong => T.raw "pounding"
        T.raw "on the front door. She wants Tommy to come out to talk. Tommy is hiding in the dark in his bedroom. He’s murmuring “tell her to go away, I’ll call the cops.” She pounds away for another 15 minutes. She walks away shouting threats that would freeze the heart of Capn Ahab."
        T.br()
        T.raw "This morning, Tommy leaves early, putting up a note to Roger saying: “Call me ASAP” – Agitated Roger is cooking his breakfast, and turns to Southwick: “Is it OK to VENT?” – He says “Sure.” (Southwick knows I’m a sucker for an interesting story, and this one is devine! )"
      T.blockquote =>
        T.p => T.raw "It seems that Tommy snooped around on FaceList or CraigBook or somewhat and found an ad for a request for a threesome from Wanda and her new boyfriend, Carl. The pictures on the ad had blanked out faces, but Tommy had the original picture (?) and put that in an e-mail with the link to the offending ad. Then Tommy sent that out to all of Wanda’s and Carl’s friends and relatives."
        T.p =>
          T.raw "A dirty, filthy trick. No wonder Tommy wanted to hide."
          T.br()
          T.raw "Well… It gets more fun. It seems that when Wanda left Tommy, she had the admin passwords to Tommy’s computer!!!! Tommy has his remote administration feature turned on, but to Tommy, that’s like saying “"
          T.a href: "http://www.google.com/search?rls=en&amp;q=%22boff+noff+toff+roff%22&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "&gt; Boff Noff Toff Roff"
          T.raw "&gt; “ – meaningless. Wanda gave the passwords to Carl, who is Windows savvy, and farkeled Tommy’s computer."
        T.p => T.raw "Tommy wants to call the FBI."
      T.p => T.raw "Roger and Southwick’s gab-fest is cut short as Tommy arrives: “Have the Police been here yet?”"
      T.p =>
        T.raw "At this point, Roger is steamed up because he’s friends with all the players. Been friends with them for years. In fact, Carl is the son of Roger’s best friend. Wanda has known Roger since she was 7 and confides in him like a grandfather. She calls him “Gramps” – All her"
        T.em => T.raw "friends"
        T.raw "call him “Gramps.” And all the players in this crap-opera are pushing him to act as go-between and such which pisses Roger off!"
      T.blockquote =>
        T.p => T.raw "This is all cutting into Roger’s class participation in his on-line PhD in “Minding Your Own Business.” Shit, if he doesn’t get a good grade, he will have to pay back that Student Loan for all his hours of on-line Poker."
      T.p =>
        T.em => T.raw "More to follow soon!!!"
  # 
  # section wanda
  # 
  wanda: =>
    T.h3 "#wanda", id: "wanda", => T.raw "Wanda"
  # 
  # section tommy
  # 
  tommy: =>
    T.h3 "#tommy", id: "tommy", => T.raw "Tommy"
  # 
  # section roger
  # 
  roger: =>
    T.h3 "#roger", id: "roger", => T.raw "Roger"
  # 
  # section southwick
  # 
  southwick: =>
    T.h3 "#southwick", id: "southwick", => T.raw "Southwick"
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
page = new southwicks_deep_background_report_on_3_gunas_lp
console.log T.render page.html

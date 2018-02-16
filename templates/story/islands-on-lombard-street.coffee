# 
class islands_on_lombard_street extends stjohnsjimtemplate
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
      @post_islands_on_lombard_street()
  # 
  # section post_islands_on_lombard_street
  # 
  post_islands_on_lombard_street: =>
    T.div "#post-islands-on-lombard-street.article.article-type-post", id: "post-islands-on-lombard-street", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Islands on Lombard Street."
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
        T.raw "I&rsquo;m writing too much, I seem to live to write.&nbsp; (Is this a symptom of mania?&nbsp; Very likely.&nbsp; Shoot me.)&nbsp; But the difficulty is that the more I write, the LESS I am on the streets of St. John&rsquo;s.&nbsp; The less I&rsquo;m on the streets means less inspiration.&nbsp; A big trouble is that Storybook Theatre is closed for the season.&nbsp; You know, Lombard Street’s tavern fed, sun-drenched table fests of last summer.&nbsp; Now&nbsp;"
        T.em => T.raw "there"
        T.raw "&nbsp;was inspiration.&nbsp; I must go back to the streets for inspiration."
      T.p => T.raw "I wander down Lombard: Men grumble close together in front of the ten step meeting hall. Farther on, I see someone cleaning leaves from the alcove entrance of an empty store. &nbsp; He throws a blanket into the gutter.&nbsp; To make it dirty, wet and unusable.&nbsp; Practical or punitive?"
      T.p => T.raw "Like the storm tossed Oregon coast: your gear is at peril. &nbsp;Never turn your back on the ocean. &nbsp;Never turn your back on the street."
      T.p =>
        T.raw "A few minutes later, I hear The Everly Brothers singing a &lsquo;50s hit.&nbsp; It&rsquo;s&nbsp;"
        T.a href: "http://www.yelp.com/biz/pattis-home-plate-deli-and-fountain-portland", => T.raw "Patty&rsquo;s Home Plate Cafe and Time Warp, Inc"
        T.raw ".&nbsp; Imagine a 50&rsquo;s era Woolworth with a Diner section.&nbsp; Retro style.&nbsp; But Patty&rsquo;s isn&rsquo;t really retro. The fixtures are old, the soiled ceiling tile looks like underwear.&nbsp; Aged, and not as graceful at aging as The Grand Canyon, but just as the Grand Canyon is ancient, it is never retro.&nbsp; Patty&rsquo;s is like that.&nbsp; Eternally in the fantasy world of&nbsp;"
        T.a href: "http://en.wikipedia.org/wiki/Pleasantville_(film)", => T.raw "Pleasantville"
        T.raw ".&nbsp; In a good way."
      T.p => T.raw "–I notice The Three Wise men from Gunas Loop: Tommy, Roger, and Southwick at a booth. &nbsp;I join them. It seems that&nbsp;Tommy got&nbsp;a strange e-mail threat mentioning demons coming out of the fourth portal of GaGa that will shrivel his pinocchio."
      T.p => T.raw "There is a Diner section: The food is good, and straight out of the fifties.&nbsp; The waitress is the fifties image of our collective older sister: recently married, starting a family and, when not on shift, likely chews bubble gum.&nbsp; The chicken fried steak is my favorite."
      T.p =>
        T.raw "–Roger agrees that a shrivelled pinocchio is pretty bad, but with Tommy’s&nbsp;"
        T.em => T.raw "exaggerations"
        T.raw ", his pinocchio must be enormous. &nbsp;Maybe even in the Guinness book of exaggerations. &nbsp;"
      T.p =>
        T.raw "Behind the dining section, the store is less definite:&nbsp; Cosmetics, yard goods, unassembled manikins, shelves of rental DVD&rsquo;s. &nbsp;If you look, you might find a 1950’s set of aluminum cups in their original container. &nbsp; Patty’s shifts like Hogwarts, and you swear that this is just part of a giant store stuck in the"
        T.a href: "http://www.google.com/search?rls=en&amp;q=I+like+ike&amp;ie=UTF-8&amp;oe=UTF-8#q=I+like+ike&amp;hl=en&amp;client=safari&amp;rls=en&amp;prmd=iv&amp;source=univ&amp;tbs=vid:1&amp;tbo=u&amp;ei=_mT0TKmNDY3CsAPm06DtCw&amp;sa=X&amp;oi=video_result_group&amp;ct=title&amp;resnum=1&amp;ved=0CCsQqwQwAA&amp;fp=84d1b6a87007f5d5", => T.raw "Eisenhower"
        T.raw "era: &nbsp;60 years ago."
      T.p => T.raw "–Southwick holds the gypsy’s curse to his head: &quot;Wooo, wooo, wooojy, Take this ticket back to boojy&quot; He continues: &nbsp;&quot;I have successfully sent this curse back to the 11th dimension of Bogus. &nbsp;If any demons come, I will personally tear them new assholes. Spiritually.&quot; &nbsp; Tommy shouts &quot;Hot damn! Holy Demons!&quot;"
      T.p =>
        T.raw "Over in the corner of Patty’s the guys who rocked to"
        T.em => T.raw "&quot;Maybellene&quot;"
        T.raw "and"
        T.em => T.raw "&quot;Shake, Rattle and Roll&quot;"
        T.raw "&nbsp;are now rocking in their mobility devices.&nbsp; The gals are gathered around another table chirping away just as they did back then, but of course these seventy year olds are too young to have been hot chicks back."
      T.p => T.raw "Clearly Patty&rsquo;s is doing things all wrong!&nbsp; This business must be failing! &nbsp;Call in the City Council!!"
      T.p => T.raw "Just like us aging rockers the Home Plate must be on it&rsquo;s last mobility device. &nbsp;Can they really be making any money in St. John&rsquo;s with this non-alcoholic formula?"
      T.p => T.raw "–Tommy is now strategizing with his long experience as the Ethics Chair at Waterfront U which can be summed up with: &ldquo;Eh?&rdquo;&nbsp; Roger is definite in his response: &ldquo;Buh!&rdquo;"
      T.p =>
        T.raw "And then I notice the Pizza Guy"
        T.strong => T.raw "delivering"
        T.raw "a Calzone.&nbsp; The cook chops it up.&nbsp; Puts it on a plate, and gives it to all the customers at the counter.&nbsp; Free food? From another restaurant? &nbsp; An odd random act of kindness for a business, yes? &nbsp;The owner gives a pastry to a homeless man. &nbsp; Without turning it into a photo-op."
      T.p =>
        T.raw "You get the feeling that Patty&rsquo;s has been doing things this way since Buddy Holly&rsquo;s airplane was still in the sky.&nbsp; If there is enough prosperity for stability, excess&nbsp;"
        T.em => T.raw "can"
        T.raw "&nbsp;be used for better purposes than mere business cosmetics."
      T.p => T.raw "–Southwick had more of a &ldquo;Bring it on&rdquo; attitude.&nbsp; Roger and Tommy reminded Southwick that he had never been shot in a street brawl, so he should stick with &ldquo;Buh!&rdquo;"
      T.p =>
        T.raw "Patty&rsquo;s Home Plate is being run as a love affair with the people of St. John&rsquo;s.&nbsp; And just like them, me, us, (but of course not you,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ",) it may be run down, but very much still running."
      T.p => T.raw "Is this an island of business stability on Lombard?&nbsp; Like an outcropping on a stormy shore, solitary, doing it&rsquo;s own thing, with shifting sands of failed businesses all around. &nbsp;Shine on, Patty’s!"
      T.p => T.raw "–Tommy, in a rare move of compromise, switched to &ldquo;Buh!&rdquo; and they had consensus.&nbsp;"
      T.p => T.raw "Consensus is wonderful"
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
page = new islands_on_lombard_street
console.log T.render page.html

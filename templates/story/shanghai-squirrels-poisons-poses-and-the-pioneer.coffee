# 
class shanghai_squirrels_poisons_poses_and_the_pioneer extends stjohnsjimtemplate
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
      @post_shanghai_squirrels_poisons_poses_and_the_pioneer()
  # 
  # section post_shanghai_squirrels_poisons_poses_and_the_pioneer
  # 
  post_shanghai_squirrels_poisons_poses_and_the_pioneer: =>
    T.div "#post-shanghai-squirrels-poisons-poses-and-the-pioneer.article.article-type-post", id: "post-shanghai-squirrels-poisons-poses-and-the-pioneer", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Shanghai Squirrels: Poison's Poses and the Pioneer"
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
      T.p => T.raw "I want a squirrel tail for my hat. &nbsp;Southwick is taking me on a tour of back-woods St. John’s, deep into Tommy County to find out what uses they have found for a permanent Pacific Northwest resource: the common squirrel. &nbsp;The residents there say the county line is 50 feet around the nearest cop."
      T.p => T.raw "Southwick tells me that Ella used to work at Waterfront U. &nbsp;There was a scandal about embezzling that Ella got caught up in, and that Tommy was instrumental in keeping Ella out of jail."
      T.p => T.raw "Ella has small house near a wildlife preserve. &nbsp;Ella laughs a lot. Weird laugh. She is small and shriveled. It looks like a life of cigarette smoke has sucked her vital essences and replaced them with creosote. She could be 75, she could be 45. Impossible to tell. There is a bench and vials of odd chemicals, tools and jigs for carving, shaping and mounting."
      T.p =>
        T.raw "Ella has a notebook of photos of her work. The squirrels are in many poses. &nbsp;There is a &quot;moments from history&quot; section - &nbsp;Washington Crossing the Delaware, Lincoln’s assasination, raising the flag at Iwo Jima, the"
        T.a href: "http://en.wikipedia.org/wiki/Triangle_Shirtwaist_Factory_fire", => T.raw "Triangle Fire"
        T.raw "and"
        T.a href: "http://www.youtube.com/watch?v=wcW_Ygs6hm0", => T.raw "Major King Kong"
        T.raw ". Serious stuff.&nbsp;&nbsp;Most, though, are riding in cars or on motorcycles. A few are in Kama Sutra positions.&nbsp;"
      T.p => T.raw "She talks taxidermy: &ldquo;I still use the old formulas. It&rsquo;s hard to get arsenic and mercury any more, but Tommy can get anything. Toxic Tommy!&rdquo; She picks up a syringe and starts poking it into her work. She cackles. She starts to wheeze."
      T.p => T.raw "I ask her about the old formulas: &quot;Arsenic and mercury are really nasty poisons that keep on killing, how can you use them so close to the nature preserve?&quot;"
      T.p => T.raw "Ella replies: &quot;Where do you think Tommy gets the stuff from? &nbsp;This is the Willamette! &nbsp;He hauls out a ton, and I put back in a pound. &nbsp;It’s cap and trade, baby. &nbsp;It’s sustainable.&quot;&nbsp;"
      T.p => T.raw "Southwick pulls the package from Tommy. Ella opens it: a group of squirrels enjoying Da Vinci&rsquo;s &lsquo;last supper.&rsquo;"
      T.p => T.raw "She reads the note: &ldquo;Tommy says it&rsquo;s too high-brow to have them on chairs. He thinks he can sell it if I put the squirrels on motorcycles. Tommy&rsquo;s been real good to me, what a great guy. He really helped me after that awful business over at Waterfront U.&rdquo;"
      T.p => T.raw "She asks me if I want anything, and I ask the price of a squirrel’s tail."
      T.p => T.raw "She replies:&nbsp;&ldquo;No, I only sell the whole pelt. &nbsp;I got a reputation, you know. I tell you what I can do, is to mount one on the front of your brim. I do good work.&rdquo; She points to one with squid tentacles where its head should be.&rdquo;"
      T.p => T.raw "Me: &ldquo;Nice work. I&rsquo;ll pass on a hat mounted stuffed squirrel. I just want the tail for a hat-band.&rdquo;"
      T.p => T.raw "Ella: &ldquo;Nope, not much call for a squirrel without a tail. &nbsp;I got a reputation. &nbsp;The whole thing or nothing.&rdquo; She starts cackling and wheezing repeating: &ldquo;a squirrel without a tail!&rdquo; and &ldquo;the WHOLE thing&rdquo; over and over like it is some sort of in-joke. Mercury in the brain, I guess. She starts to wheeze then straightens up, and asks me: &quot;Would ya fight for one? &nbsp;You can get into the ring.&quot;"
      T.p => T.raw "I’m confused: &quot;Fight? Who? What?&quot;"
      T.p => T.raw "Southwick gets one of those &quot;I’m gonna tell your mommie&quot; looks on his face and says &quot;Oh, no, Animal Fights? That’s horrible&quot;."
      T.p => T.raw "She looks me in the eye. &nbsp;She says: &quot;This is why we don’t like outsiders. &nbsp;We don’t talk about things to outsiders – Are YOU an outsider?&quot;"
      T.p => T.raw "I notice the syringe needle in her hand and I put my voice into ‘soothe the beast’ mode and walk slowly backward: &quot;Uhh. &nbsp;No. &nbsp;I’m totally OK. &nbsp;Southwick is cool, you know him. &nbsp;He’s my good buddy.&quot;&nbsp;&nbsp;"
      T.p => T.raw "She goes on: &quot;Tommy says Southwick can’t do any harm, so he’s OK.&quot; &nbsp;She explains: &quot;You can fight any animal you want in Pioneer’s Pit. We have it on the last thursday of the month. &nbsp;Man against Nature. &nbsp;No guns allowed.&quot;"
      T.p => T.raw "I’m a bit stunned. &nbsp;&quot;Pioneer’s Pit?&nbsp;No guns? How does that work?&quot;"
      T.p => T.raw "She goes on: &quot;You get five minutes in the pit. &nbsp;Squirrel, nutria, raccoon – your pick. Max points going into the pit barehanded. &nbsp;When I’m judging, I give extra points for skin exposure.&quot; &nbsp;She winks at me."
      T.p => T.raw "I reply, &quot;What kind of match is it?&quot;"
      T.p => T.raw "She starts to rant: &quot;Pioneer! That’s what men were like in the old days. &nbsp;Fighting the wilds of nature: Man to Grizzly. With only a knife. &nbsp;That’s not sustainable. &nbsp;We just don’t have enough grizzleys to go around, and most of the men today are such wimps that they couldn’t take on a pack of wolves let alone a puma. &nbsp;We gotta get back to that good pioneer spirit. &nbsp;The city-fied geeks over in Intel-town are lining up to get their scars with squirrels. It’s gentrification! It’s sustainable.&quot; &nbsp;She has a fury in her that would last about 10 minutes for any audience. &nbsp;Just long enough to get consensus."
      T.p =>
        T.raw "&quot;Think you can take on a raccoon? &nbsp;I tell you what. &nbsp;Nutrias are the easiest. You go in with this syringe, I guarantee it. &nbsp;You win the fight, I’ll give you a big discount on mounting it on your hat.&quot; She shows me the squid-head thing again. &nbsp;She looks me up and down and says: &quot;Like I said – I give extra points for skin exposure. &nbsp;You go in completely bare, and I’ll give you an"
        T.em => T.raw "extra"
        T.raw "special discount. On mounting.&quot;"
      T.p => T.raw "I thank Ella for her time, explaining that I’m scheduled for heart surgery on the last Thursday of every month. &nbsp;For many months. &nbsp;We leave."
      T.p => T.raw "Southwick tells me he needs to make one more stop with his case of frozen squirrel."
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
page = new shanghai_squirrels_poisons_poses_and_the_pioneer
console.log T.render page.html

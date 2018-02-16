# 
class lonesome_al_and_the_space_door extends stjohnsjimtemplate
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
      @post_lonesome_al_and_the_space_door()
  # 
  # section post_lonesome_al_and_the_space_door
  # 
  post_lonesome_al_and_the_space_door: =>
    T.div "#post-lonesome-al-and-the-space-door.article.article-type-post", id: "post-lonesome-al-and-the-space-door", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Lonesome Al and the Space Door"
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
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", as I&rsquo;m sitting in the James John Cafe this afternoon, I notice a twenty something wearing sweatpants, a hoodie, and a huge feather headdress from a Los Vegas show. It&rsquo;s sea green with shimmering blue sparklies. The ceiling fan makes the feathers swirl around like a dancing shiva and the colored sparklies play fairy games on the walls. &nbsp;Actually, I wouldn&rsquo;t really notice, except she pronounces the state as"
        T.em => T.raw "ory-gone"
        T.raw "."
      T.p => T.raw "That’s what we pay attention to."
      T.p => T.raw "Whatever the distraction, I have taken far too long to finish this little cartoon. Then bang! I get two different endings at the same time. I put them both there."
      T.p => T.raw "Here it is: Lonesome Al and the One Way Space Door."
      T.hr()
      T.p => T.raw "Graphic - Space, a few stars, There is a space-time funnel and a Da Vinci style etching of geometrical symbols. There is a rectangle seeming to emerge from a sparkly ribbon of golden light."
      T.p => T.raw "Upper Left Text: Quantum General: Leader in Space Doors."
      @caption_we_transport_anything_anywhere_in_the_l_quadrant_()
      T.p => T.raw "Graphic &mdash; Same image from farther back: We see another, complete rectangle in the right foreground. It is like a smooth warehouse door. Out of the doorway come men and equipment. The men are floating in space building and linking stuff as it comes through the doorway."
      T.p =>
        T.raw "Upper Left Text: Quantum General: Leader in Space Construction and Colonization."
        T.br()
        T.raw "Caption: Sustainable Colonies made possible through the instantaneous transfer of the QG Space Door."
        T.br()
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "Graphic &mdash; Inside a large shipping dock. pallets of equipment and supplies going through the roll up doors to disappear into absolute blackness. The monitors above each door show the contents emerging through the doorway in space somewhere."
      T.p => T.raw "in the foreground is Tommy, wearing a hard hat, overalls and a clipboard. He has a plasma glow that covers his entire body. The glow is like a transparent bag that hovers an inch away from his body. He usually appears like this in any frame that he speaks from."
      T.p => T.raw "Tommy: We can ship anything, to any of 50 solar and 194 interstellar destinations from this facility."
      T.p =>
        T.raw "Caption: Our efficient logistics gets the job done for exploration, science and human expansion."
        T.br()
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "Graphic &mdash; A happy family, in casual dress is smiling at us. They are waiting to go through the Space Door. Each of them has the same glow as Tommy. The babe in arms has the glow extend around his rattle. Another family, just gone through the Space Door, wave back at us from the monitors above the window."
      T.p => T.raw "Tommy: These folks are ready for the opportunity of a lifetime: it&rsquo;s all on the other side, you know. We make sure that each colony has all it needs for a sustainable future."
      T.p =>
        T.raw "Caption: The instantaneous one way matter transfer, two way information transfer makes space engineering for humanity not only possible, but essential for our future."
        T.br()
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
      T.p => T.raw "Graphic &mdash; All of the above graphics are small, postage stamp size in the background of this frame. In the foreground is Lonesome Al. He is alone in a largish room. It is like a combo living-dining desk area. He is playing an internet game."
      T.p => T.raw "Lonesome Al: We&rsquo;ve all seen those images thousands of times. The success of our colonies is fabulous, isn&rsquo;t it. But what these families are always surprised about is that you can not get back. It&rsquo;s a one-way trip."
      T.p => T.raw "These doors can transport anything and everything except themselves. It&rsquo;s the mini-black hole power supplies. Precious few mini-black holes on the other side of these doors. If you can&rsquo;t find the 10,000 or so of these to power a second door, well, you are just stuck."
      T.p => T.raw "Caption: Lonesome Al. The first workman accidentally sucked through a door to an intergalactic monitoring station."
      T.p =>
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "Graphic &mdash; Lonesome Al is space-walking outside his deep space facility. It seems much as a working-family cottage, but made of pre-fab parts. The same golden glow surrounds Al as well as the cottage."
      T.p => T.raw "Lonesome Al: yup: this is it. This is my home. There are just no way to get a back connection, so I&rsquo;m stuck here. My wife and I decided it was best that she stay back on Earth with the kids. We still talk.&nbsp;Quantum General treats me pretty well. They send pretty much anything that I really need. I got my own facebook page and lots of fans, so I&rsquo;m still connected. Kinda."
      T.p => T.raw "Caption: Ladies! I&rsquo;m set for life. Come join me in my castle in space. Serious inquiries only."
      T.p =>
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "Bottom Banner Text:"
        T.br()
        T.raw "The next scheduled shipment to Lonesome Al is in a week:"
        T.br()
        T.raw "Tommy wants to send a shipment of viagra with a note: &ldquo;Here&rsquo;s something you&rsquo;ll never use!&rdquo;"
        T.br()
        T.raw "Southwick wants to send a deck of tarot cards: &ldquo;A great way to deal with empty time&rdquo;"
        T.br()
        T.raw "Roger wants to send an extra tube of &ldquo;Roger&rsquo;s Space Caulk&rdquo;- You can alway use more caulk."
      T.p =>
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "Bonus Ending!"
        T.br()
        T.raw "Lonesome Al invented Space Yoga, and became the only living master. He &ldquo;allowed&rdquo; only the most devoted of the practitioners to join him in space. He is now surrounded by fanatical yoginis who are now&nbsp;asking for&nbsp;a couple more Tarot decks and&nbsp;more of Roger’s Space Caulk. They are far too lofty minded to help Al with that shipment Tommy sent. Too bad Al didn&rsquo;t invent Space Tantra."
  # 
  # section caption_we_transport_anything_anywhere_in_the_l_quadrant_
  # 
  caption_we_transport_anything_anywhere_in_the_l_quadrant_: =>
    T.h2 "#caption-we-transport-anything-anywhere-in-the-l-quadrant-", id: "caption-we-transport-anything-anywhere-in-the-l-quadrant-", => T.raw "Caption: We transport anything, anywhere in the L-quadrant."
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
page = new lonesome_al_and_the_space_door
console.log T.render page.html

# 
class shanghai_tunnel_tales_part_1 extends stjohnsjimtemplate
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
      @post_shanghai_tunnel_tales_part_1()
  # 
  # section post_shanghai_tunnel_tales_part_1
  # 
  post_shanghai_tunnel_tales_part_1: =>
    T.div "#post-shanghai-tunnel-tales-part-1.article.article-type-post", id: "post-shanghai-tunnel-tales-part-1", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Shanghai Tunnel Tales - Part 1"
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
      T.p => T.raw "They have tried to suppress the rumors for a very long time. Every time I ask about the Shanghai Tunnels under the James John Cafe, the owners kind of put their eyes skyward and say they don&rsquo;t know anything about it. In fact, nobody in St. John&rsquo;s is talking. Obviously a conspiracy to hide the truth."
      T.p => T.raw "The only person that even had a clue was Tommy, the Dean of Damaged Cargo at Waterfront U, when he said: &ldquo;You won&rsquo;t find anything above the water line.&rdquo; I immediately had Winnie Daough give me SCUBA training. She didn&rsquo;t know anything about SCUBA but that&rsquo;s never stopped her from doing anything, and that&rsquo;s good enough for me. She taught me all about pressure, tanks, and procedures. Everything from scaring sharks with underwater loogies to how to make a tourniquet out of seaweed and barnacles."
      T.p => T.raw "I suited up, filled my tanks at the Seven Eleven&rsquo;s gas station using an adapter flange that Winnie had cobbled together with duct tape, and went down to the Willamette River. I decided that I should comb the St. John&rsquo;s side of the river just downstream of the bridge. I blocked it out in geometrical precision and did a careful search. On the third night, I found it!"
      T.p => T.raw "Using my cell phone to light the way, I swam into the mouth of what looked like a very large drain pipe. Once inside, I climbed up a rotting ladder to a small room. The wall read &ldquo;&mdash;&gt; Shanghai,&rdquo; and &ldquo;&lt;&mdash; St. John&rsquo;s.&rdquo; Total proof."
      T.p => T.raw "The floor was dry and so I went uphill following the arrows to St. John&rsquo;s. &nbsp;Soon, the noises in the tunnel made it clear that I was passing under train tracks. As I went higher, the walls vibrated in that unmistakable slap-chunk-slap-slap-bonk of Winnie&rsquo;s washer-dryer in the spin cycle. &nbsp; I knew I was on the right track."
      T.p => T.raw "Somewhat farther on, the rumble of heavy trucking rigs indicated that I was under Ivanhoe, and was nearing Lombard. At one of the many side branches along the way, I saw what looked like it had been a door. I snaked a bit closer, and found a mound of rubble blocking it."
      T.p => T.raw "I scraped away enough to see the writing: &ldquo;Dispatch.&rdquo; I cleared away more and pushed my way through to a room with ten narrow benches laid out like fingers and the remains of a teller cage with another door behind it. There were even times of departure for ships and a tally board to indicate how many kidnapees were required and amounts paid for each. &mdash; I had hit on something big. An underground holding room!"
      T.p => T.raw "I opened an old log book in the corner. It seemed to belong to someone who only signed himself as &ldquo;JJ&rdquo; I saw entries with names, dates, and money received. &nbsp;In old style flowery script, It was detailed in things like distinguishing marks, tattoos, body build, weight and such. It was clear from the layout that the &ldquo;sailor trainees&rdquo; were laid out on the benches as they were delivered from the bawdy houses above. The money transactions between thugs and sea captains were done here."
      T.p => T.raw "All businesslike: Like maybe this &mdash;"
      T.p => T.raw "Jake the thug: Here&rsquo;s a good one. Listen to him. He doesn&rsquo;t wheeze. His muscles are toned, yeah, and there&rsquo;s no scurvy on his gums. I say he&rsquo;s worth $5."
      T.p => T.raw "Captain Bilgewater: Let me see. He smells familiar. Turn him over. Just as I thought! He is already signed onto my ship! I&rsquo;ll not pay twice for my own crew member, you blackguard! I&rsquo;d as soon take you on my ship and teach you not to trick me!"
      T.p => T.raw "JJ: Come, come, gentlemen, we should not argue about such things. The good captain is right. Let&rsquo;s come to a suitable agreement. Captain, I&rsquo;m sure that we can deliver this man to your ship immediately. As you see, he is in no shape to make your sailing time in his current condition. I propose that we simply take your man to your ship, and we simply put it down as a one dollar delivery charge, which you can just take out of his pay in the next port. Bilgewater? Jake?"
      T.p => T.raw "Bilgewater: Fifty cents, Saint! And not a penny more!"
      T.p => T.raw "Jake: But that means I only get twenty five!"
      T.p => T.raw "JJ: Take or leave it, Jake. You should be more careful about your &ldquo;hiring interviews.&rdquo;"
      T.p => T.raw "Jake: (grumble): Done!"
      T.p => T.raw "JJ: Yes, Captain a fair offer: you will find your man fit and on his feet well before you may need him when you hit the bar at the mouth of the Columbie. Fifty cents, please. Thank you. Sign here, Thank you. Jake, sign here, and take this release with you. Have the good Captain Bilgewater sign it, and bring it back to me for your twenty five cents."
      T.p => T.raw "Yes, it all seems very businesslike. &nbsp;The log book had many such entries."
      T.p => T.raw "I dug further. My hands trembled with excitement as I found other books heaped on the floor. Most were handwritten, each page written in the same old flowery script. There was a diary and a book of recipes with &ldquo;Lena&rsquo;s 1001 feasts&rdquo; in calligraphy on the title page."
      T.p => T.raw "I grabbed the diary along with a couple of other books on the floor, stuffed them inside my wet suit and went back to the main tunnel. Following the air flow another few feet I found a crude rebar ladder running up the side. I climbed up. It was hard considering I was still wearing my flippers and air-tank. &nbsp;I got to the top just as the battery in my cell phone gave out and my light died."
      T.p => T.raw "I pushed open the man-hole cover at the top of the ladder and came out at a secret location &mdash; the town square. It was farmers market day, so I blended right in with the other people. A person in a wet-suit, air tank and flippers is not a big deal compared to the other styles of St. John&rsquo;s."
      T.p => T.raw "I crossed over to the James John Cafe, and wrote this until the air in my tank ran out."
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
page = new shanghai_tunnel_tales_part_1
console.log T.render page.html

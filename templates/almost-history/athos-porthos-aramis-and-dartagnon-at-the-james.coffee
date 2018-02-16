# 
class athos_porthos_aramis_and_dartagnon_at_the_james extends stjohnsjimtemplate
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
      @post_athos_porthos_aramis_and_dartagnon_at_the_james()
  # 
  # section post_athos_porthos_aramis_and_dartagnon_at_the_james
  # 
  post_athos_porthos_aramis_and_dartagnon_at_the_james: =>
    T.div "#post-athos-porthos-aramis-and-dartagnon-at-the-james.article.article-type-post", id: "post-athos-porthos-aramis-and-dartagnon-at-the-james", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Athos, Porthos, Aramis and Dartagnon at the James"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/almost-history/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "&gt; Author’s note.  Alas, the James John Cafe really has moved to a new location in the Akashic Records of our minds.  It is still in plain sight for those fortunate ones who have dined and worked there. Corner!"
      T.p => T.raw "I have not had an opportunity to speak of the James John Cafe in several weeks. The James John Cafe hides in the obscurity of plain sight. It’s a secret location, known only to a select few. That’s the way it has always been. I have located Historic Documents regarding this town and especially it’s finest Cafe."
      T.p => T.raw "The time is back a few years. It’s the Portland, Oregon, district of medieval France. King Louis XII de Deanie Martinie reigns. St John’s is the last northern bastion of sacred France on this side of the Columbia: The battles in the wars with England at the river’s edge are just miles away."
      T.p => T.raw "This day, The King’s Exulted Musketeers have stopped for a few hours for a secret mission at the James John Inn, owned and operated by James John the IV, direct descendent of the original James John, who was sainted for his excellence at being ordinary. We find them stepping down from the Uni-Met carriage Soixante-quinze on Rex Lombardia Highway."
      T.p => T.raw "James John IV: “Again we have the pleasure of serving the King’s Finest! Greetings.”"
      T.p => T.raw "Athos: “We stop here. Gather all local knowledge about English fortifications. Innkeeper: Take care of our livery, and prepare lunch for us and our servants. We would sample your wares.”"
      T.p => T.raw "JJ IV: “I will make it so. Sit where you will. Here, lackey! Take the horses and show our guest’s servants to the stables”"
      T.p => T.raw "Porthos: “Innkeeper, I am off to inspect your kitchen, insure I have ample supply of werm tea so I may be not delayed in my supervision of your lackeys to insure proper care of the steeds.”"
      T.p => T.raw "JJ IV: “At once, My kind Sir.”"
      T.p => T.raw "Athos: “You! Maid! What news do you have of the Shanghai Tunnels said to honeycomb this area?”"
      T.p => T.raw "Dartagnon breaks in abruptly: “What my urgent friend means is ‘How are the Pork Chops, Grits and Eggs today?’ and tell me all you know about the evil spiders of this area!’"
      T.p => T.raw "Aramis: “My Dear Athos, Dartagnon, you intimidate this gentle lady. Please allow me to chat amiably with this maid, as I doubt she would know such trivial details. Dartagnon, I suspect you will gather much information from the many patrons. Sandy, the spotty faced slop handler yonder may have valuable information for our mission. However, I suggest you avoid Sandy’s breath."
      T.p => T.raw "Aramis: (turns to maid) Maid, did I tell you that you have the heritage of Spanish Nobility about your cheekbones? I’m good friends with Baron BubKiss, who produces La Belle Grande Opera in Paris and I’m sure I could get you an introduction.”"
      T.p => T.raw "Maid: “Yeah, sure. Will that be with, or without toast?”"
      T.p => T.raw "Athos: “Toast for all! Double portions. Make it so.”"
      T.p => T.raw "Aramis: “Athos, my good man, you have chased her away.”"
      T.p => T.raw "Athos: “I did not, she will be returning with the toast straight away. She would not likely have knowledge of tunnels.”"
      T.p => T.raw "Aramis: “No, of course not, but she may reveal more important things.”"
      T.p => T.raw "Athos: “Do you really think you can charm every wench in Portland?”"
      T.p => T.raw "Aramis: “I am offended! I aspire to help these ladies on their journey to a sacred union with the holy.”"
      T.p => T.raw "Athos: “Your Holy Roller approach seems to work quite well on the wenches.”"
      T.p => T.raw "Porthos returns from the stables: “Quite so, quite so. I am inspired by the thoroughness of the stables and the scullery. Very efficient. Very well run.”"
      T.p => T.raw "Athos: “We leave such mundane business matters in your capable hands, Porthos.”"
      T.p => T.raw "… They chatted this way for the afternoon meal. As they gathered to leave, each settled up in their manner:"
      T.p => T.raw "JJ IV: “Noble Musketeers: thank you for your patronage, I hope my staff satisfied your requests to your satisfaction?”"
      T.p => T.raw "Athos: “Exactly so. Porthos: What say you all about the James John Inn?”"
      T.p => T.raw "Porthos: “Amazingly efficient servants, well organized: I hardly had to lift my brow to get my glass refilled. The horses and servants had their needs handled quickly. Good man, I raise my sword in your honor.”"
      T.p => T.raw "Dartagnon: “The excellent wine loosened the tongues of the patrons. I got incredibly valuable information about the Shanghai Tunnels! Sandy says that the tunnels are full of spiders, lots and lots of spiders, and you only need to follow the spiders to see where the tunnels are. I raise my sword in your honor.”"
      T.p => T.raw "Aramis: “Spiders, Mon Dieu! Yes, delightful conversations, but the food! It is flavor poetry. Each mouthful must be savored for the flow and ebb of the many delights therein. I also raise my sword in your honor.”"
      T.p => T.raw "Porthos: “Yes, poetry, the very word I was thinking of.”"
      T.p => T.raw "Dartagnon: “yes, Substantial nourishment fit for a fighting Musketeer!”"
      T.p => T.raw "Athos: “Say what you will. Service, organization, ambience, quality and above all, taste. We are all one. We all raise our swords in your honor!”"
      T.p => T.raw "The Musketeers: “All for one, and one for all!”"
      T.p => T.raw "Dartangnon: “I hope they can keep it up for a few hundred more years, it’s only 1505.”"
      T.p => T.raw "Athos: &quot;Yes, a Musketeer salute, we must leave a tip next time, though.  Now lets leave quietly out the back.&quot;"
      T.p => T.raw "The James John Cafe: endorsed by the four Musketeers for five centuries."
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
page = new athos_porthos_aramis_and_dartagnon_at_the_james
console.log T.render page.html

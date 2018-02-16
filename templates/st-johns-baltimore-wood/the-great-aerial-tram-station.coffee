# 
class the_great_aerial_tram_station extends stjohnsjimtemplate
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
      @post_the_great_aerial_tram_station()
  # 
  # section post_the_great_aerial_tram_station
  # 
  post_the_great_aerial_tram_station: =>
    T.div "#post-the-great-aerial-tram-station.article.article-type-post", id: "post-the-great-aerial-tram-station", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "The Great Aerial Tram Station"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/st-johns-baltimore-wood/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "The Great Willamette River passes by St. John’s, leaving great flat hips and sharp slopes on the land.  That’s what Baltimore Wood is: the near useless bluff between the industrial flat hip and the downtown nipples we call the bars of St. John’s.  It has the best semi-obstructed view of the gorgeous St. John’s Bridge."
      T.p => T.raw "If Portland was Los Angeles, Baltimore Wood would be Malibu.  It’s where the Daough sisters, Winnie and Pathy live along with Leo and his partner, Station."
      T.p =>
        T.raw "Just a few days ago Pathy and Winnie were sitting at the table sharing their day: Pathy has just submitted her haiku for the Bus System. The bus system puts haiku on placards and pays $500 for a winning submission."
        T.em => T.raw "“The young boy stretches - upward to knowwhere - Final Fantasy gets funky”"
        T.raw ". Winnie calmly mentions that Pathy has all the wrong syllables in the wrong lines. Pathy sighs: “I didn’t think it was very good either, but I’m my worst critic. Anyway, I entered it in the pre-teen category.”"
      T.p => T.raw "Winnie says: “Knowwhere??? Final Fantasy gets Funky? It doesn’t mean anything.” Pathy replies: “That’s what makes poetry so powerful: it’s so deep.”"
      T.p => T.raw "Winnie changes the subject: “I got my boarding platform all finished. Clothesline, pulleys, pallets, a couple of tire rims and a treadmill. All out of found materials! All I need to do is run an extension cord out there as soon as I get this old florescent shop light fixed. Then it will be all done!”"
      T.div()
      T.p => T.raw "Winnie has been working with the Baltimore Woods Tree-Top Tram Commission to link up all the pre-WWII kid’s tree houses with a Swiss style tram. Very upscale and trendy. Winnie wanted to have it finished before the next big earthquake hits. After that, Baltimore Wood will likely turn into Baltimore Landslide and Sink Hole."
      T.p => T.raw "Pathy says: “Oh, good. I was hoping to take it tomorrow: I never liked climbing that giant maple. The sap is too sticky this time of year.”"
      T.p => T.raw "Just then, there is a knock at the door. Station pops his head in and says: “Winnie, You home?? You won’t believe what I got to tell you! You have to promise never to tell.”"
      T.p =>
        T.raw "He comes in and acts a bit like he is going to announce the merger of GE, AT&amp;T and Exxon: “I promised Leo that I wouldn’t tell"
        T.em =>
          T.strong => T.raw "anyone."
        T.raw "&quot; He continues in a hushed tone: &quot;We have had some complaints about our sex-wrestling classes.”"
      T.div()
      T.p => T.raw "Winnie gets a worried look: “Did someone get hurt?”"
      T.p =>
        T.raw "Station replies: “Oh, no, nothing like that — we don’t"
        T.em => T.raw "even"
        T.raw "introduce feathers until level six. It’s the boarding platform for the tram. You know, our web-cam is set up so the platform is in the background for our web-seminars, and some people waiting on the platform might get broadcasted around the world.”"
      T.p => T.raw "Pathy asks, “Broadcasted? Might? So who complained?”"
      T.p => T.raw "Station starts talking faster: “Complaints, I mean not so much complaints as angry customers… Yes, maybe Angry Customers. That’s right, I speak it correctly this time.”"
      T.p => T.raw "Pathy says: “So nobody has been &quot;broadcasted,&quot; but what have your customers complained about? Who is angry?”"
      T.p =>
        T.raw "Station says: “Did I say angry? Well, no one angry yet, but I know that they will, and I’m"
        T.em => T.raw "sooo"
        T.raw "worried that Leo might need to move the camera. The web-cam in our training room has a view of the St. John’s Bridge through trees and the vacant industrial park.”"
      T.p => T.raw "Station stretches his arms and waves his hands in the sweeping arc of the bridge. “And the classic beauty of the Bridge is for the camera, otherwise live sex-wrestling classes would be pornographic, you know.” He pauses with his arms and legs stretched in a pose like some old time hood ornament."
      T.p => T.raw "He shifts his vocal transmission to first gear, get out of the ditch conspiracy: “But I know that you won’t tell Leo that I mentioned it. We promised him. Bye.”"
      T.p => T.raw "Pathy says: “Station sounds like my lawyer ex-husband. Anyway, I’d think they would not really want people to know exactly where they live.”"
      T.p => T.raw "Pathy looks in Winnie’s direction. Winnie gets a look of resolve: “I gotta move the platform! It’s the only way to not have to tell Leo.” Pathy sighs. Winnie can go off like a rocket without a tail section."
      T.p => T.raw "Pathy: “But you just finished it! And we don’t even know know if Leo… And I was… ” Her voice trails off as she sees Winnie pulling out the guy wires. The platform tilts like the Titanic."
      T.p => T.raw "All through the next five days, Winnie climbs up the tree, hooks her leg around a limb, leans out to take the platform apart, and lowers a piece down to the ground. Every so often she sounds like a Marine as she grunts “Hooo–ahh!” and pops a fart for extra power."
      T.div()
      T.p => T.raw "Winnie says: “I’ve got it all figured out. If I move it to the other side of the tree and put up a couple of faucets from the bathroom on the side facing Leo and Stations’ place, it will look like part of the scenery! It will blend right in with the vacant industrial park. Kind of like the ruins of some future civilization.”"
      T.p => T.raw "Pathy asks: “Will we be able to use the bathroom?”"
      T.p => T.raw "Winnie replies: “I got that all figured out. I’ll just run a hose out to the platform and back. We will just need to go up to the tram to turn the water on or off.”"
      T.p => T.raw "Pathy sighs and goes back to composing the perfect haiku: “tornado howls in tongues, quiet spaces grow precious, Future ruins live today.”"
      T.p => T.raw "Maybe someday Pathy will learn to count syllables. We can only hope."
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
page = new the_great_aerial_tram_station
console.log T.render page.html

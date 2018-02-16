# 
class shanghai_squirrels_by_the_score extends stjohnsjimtemplate
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
      @post_shanghai_squirrels_by_the_score()
  # 
  # section post_shanghai_squirrels_by_the_score
  # 
  post_shanghai_squirrels_by_the_score: =>
    T.div "#post-shanghai-squirrels-by-the-score.article.article-type-post", id: "post-shanghai-squirrels-by-the-score", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Shanghai Squirrels by the Score"
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
      T.p => T.raw "&nbsp;"
      T.p => T.raw "The squirrels have taken over. I am writing this as I watch helplessly as they forage all day long. &nbsp;I want their fuzzy tail for my hat, but all my traps have been sprung by raccoons using duct tape. How the hell did raccoons figure out duct tape is beyond me, but my sources are honest, WGAF church-goers from the Hope for Health Bar and Grease Pit."
      T.p => T.raw "In fact, Southwick tells me a buddy of Tommy, his landlord, is making big money from the squirrel-racoon-nutria triangle near Pier Park. In fact, that he is making a fortune from the internet cloud crowd."
      T.p => T.raw "Now Tommy is not the kind of guy you would trust to know anything about anybody. He may know, but what comes out of his mouth has no bearing on what he may know. &nbsp;I have to doubt Southwick on this one."
      T.p => T.raw "So I ask Southwick: &quot;Come on, buddy, Tommy tells you all sorts of things. Like the time he ice skated on the deck of a barge going over the Columbia Bar.&quot;"
      T.p => T.raw "Southwick gets all excited like he was there: &quot;Tommy says it&rsquo;s the fastest way to get around on one of those big rigs! It was a cold winter that year. And anyway, I have seen Sam&rsquo;s place myself, er, my buddy&rsquo;s place. I&rsquo;ll take you. Tommy wants me to drop off a box near at Ella&rsquo;s, er, another buddy&rsquo;s place near there. Er, I got some shit to do: you should come with.&quot;"
      T.p => T.raw "Some shit to do? &nbsp;That does NOT sound like Southwick. &nbsp;Not even when he having hurling duets with Sandy out behind the Hope for Health Bar and Cardiac Arrest First Response Center (Special Happy hour for Ambulance Drivers!)."
      T.p => T.raw "Sam, it turns out, used to work with Tommy over at Waterfront U. – Sam was two weeks short of his retirement when he was hit with a sex harassment charge from one of the office staff, a Miss Big, a cousin of Mr. Big, it&rsquo;s a family business, you know."
      T.p => T.raw "In secret negotiations, Tommy&rsquo;s stirring defense of Sam won Tommy the coveted Ethics Chair: &ldquo;Maybe yes, maybe no. Who cares. Either way we dump him before his retirement gets vested. Good job to everybody. I&rsquo;ll keep an eye on him.&rdquo;"
      T.p => T.raw "It seems that Sam operates a humane catch-and-release service, but he doesn&rsquo;t really release many, just enough to stay legal. I find out that most of the squirrels and raccoons are &ldquo;damaged in transit&rdquo; or &ldquo;mis-routed&rdquo; to Sam&rsquo;s profit."
      T.p => T.raw "Southwick and I arrive over at Sam&rsquo;s place. &nbsp;It has lots of &quot;animals around Jesus&quot; kind of pictures in the yard."
      T.p => T.raw "I ask Sam, &quot;So how does this catch and release stuff work? Why don&rsquo;t you just kill the suckas? I mean they are not a protected species, are they?&quot;"
      T.p => T.raw "Sam says, &quot;Tommy&rsquo;s been really good to me since I got canned. He helped set me up and had some good connections so I have a reliable income now. &nbsp; Southwick suggested I get better press from the &ldquo;humane&rdquo; thing. Tommy tells me it&rsquo;s fashionable protection against getting lez-bombed in some parts of Oregon this millennium, but the methods are timeless. Harvest &lsquo;em, Sell &lsquo;em. The internet is the best. I like Plague&rsquo;s List, where they have the end-times survival marketplace.&quot;"
      T.p => T.raw "I ignore the gender slur and thank Sam for the tip; End-times talk is all the rage now, and we have so many options for destruction."
      T.p => T.raw "In the 50’s, when we only had nuclear destruction, I kinda liked the fall-out shelter idea. It &ldquo;sounded&rdquo; good and gave us a much needed cultural crutch as we fought economic warfare against the USSR. Today, with our 2,000 cable channels of end-time options, we don&rsquo;t seem to have a viable National Crutch. Should we feel all warm and fuzzy from Pat-downs at the airport? Inoculations to protect against super-bug bacteria? &nbsp;And let’s not forget fall-out shelters as we pull the wool over our own eyes."
      T.p => T.raw "Sam shows me the certifications from Animal Control and Health. Sam can run his operation at least till the inspector shows up. Could be months or years. A viable business opportunity. &nbsp;The rule in Tommy County, Oregon, is that it is only Multnomah County when the cops are near."
      T.p =>
        T.raw "As we walk out to his garage he says: &ldquo;Hell, if there are not enough critters in a neighborhood, I&rsquo;ll release &lsquo;em and come back next year. They breed"
        T.em => T.raw "real"
        T.raw "good.&rdquo; He leans into me as he says &quot;real&quot; and his breath smells like wine. He continues: &ldquo;I used to exterminate rats, still do, but the market for free range rat meat just isn&rsquo;t what it used to be.&rdquo;"
      T.p => T.raw "He points out the main holding cages. There is a TV there showing instructional videos on how to use duct tape to spring home-made traps. The animals watch intently."
      T.p => T.raw "Southwick chimes in with his goody-goody side: &quot;Sounds like a public nuisance.&quot;"
      T.p => T.raw "Sam gets all excited, like a cable channel preacher: &quot;That&rsquo;s why the humane thing is Sooo important! It&rsquo;s a Public SERVICE. A strong ecology needs a visionary like me to insure the full future of this precious resource of nature. The PNW Squirrel! If a neighborhood is lacking in this essential element of the Flow of Nature, I am just helping out."
      T.p => T.raw "Southwick glows with momentary enthusiasm: &quot;Thank You So Much! You are so Right! Let nature have abundant resources!&quot; &nbsp;He often return to sanity by morning, so I let it pass."
      T.p => T.raw "I&rsquo;m a bit taken aback by Sams &ldquo;high-road&rdquo; argument, but I hear similar things coming from other highly doubtful, but highly placed authorities. Who am I to say that Sam is not a visionary? I&rsquo;m not sure I like his vision, or even if he has a vision, but he seems serious. Maybe I should just shoot him now."
      T.p => T.raw "I venture: &quot;So a large population of squirrels is good ecology?&quot;"
      T.p => T.raw "Sam is less the preacher, and more the businessman: &quot;Yeah, no matter if people want more or less of the little buggers, I get the big bucks! I relocate in either direction. I&rsquo;m providing a needed service. Southwick needs to keep the little suckas out of his tomatoes. My ‘ultra painless, no scare, humane, catch-and-release because we care’ service is tailor made for Southwick&quot;."
      T.p => T.raw "I come to the point: &quot;Actually, I only want the tail. It would look cool as a hat-band.&quot;"
      T.p => T.raw "Sam gets ultra-business: &ldquo;Oh, no. I don&rsquo;t sell the tails. MMmm. No. Bad business. Only the complete animal. I only sell in lots of 20 anyway. Live, or gutted and frozen. If you want skins, you might talk to Ella next door. She is one of my best customers. &nbsp;She’s a bit off in the head from all the weird chemicals she uses.&quot;"
      T.p => T.raw "Before we leave,&nbsp;Southwick picks up a score: a box of 20 frozen, urban range fed squirrels.&nbsp; Then he and I go the short distance to Ella&rsquo;s place."
      T.p => T.raw "I’m wondering if Ella is another of Tommy’s &quot;network.&quot; &nbsp;Let’s find out next time."
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
page = new shanghai_squirrels_by_the_score
console.log T.render page.html

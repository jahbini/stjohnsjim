# 
class the_gift_of_who_are_you extends stjohnsjimtemplate
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
      @post_the_gift_of_who_are_you()
  # 
  # section post_the_gift_of_who_are_you
  # 
  post_the_gift_of_who_are_you: =>
    T.div "#post-the-gift-of-who-are-you.article.article-type-post", id: "post-the-gift-of-who-are-you", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "The Gift of &quot;Who Are You?&quot;"
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
        T.raw "It all started a few days ago over at the House of the"
        T.a href: "http://en.wikipedia.org/wiki/Ten_of_Cups", => T.raw "Ten of Cups"
        T.raw "."
      T.p => T.raw "That&rsquo;s the good card, you know: It shows a family gazing at their serene home under the arch of rainbow, the parents in warm embrace and the children dancing with joy. It indicates harmony, quiet accommodation of each other in nurturing ways. The size of your domain is unimportant, only the rich emotional harvest you may reap."
      T.p =>
        T.raw "So let me introduce Mr. and Mrs. Bill and Coo"
        T.a href: "http://www.online-mythology.com/baucis_philemon/", => T.raw "Baucis"
        T.raw ", who live at"
        T.a href: "http://en.wikipedia.org/wiki/Ten_of_Cups", => T.raw "#10 Cups Dr"
        T.raw ". It&rsquo;s a nice part of the Malibu district of St. John&rsquo;s. And if you look at their yard just right, &ldquo;pillars replace wooden-props,&#8232;and the straw yellowed became golden roofs; &#8232; You see carved doors, and ground covered with marble.&rdquo; &mdash;"
        T.a href: "http://en.wikisource.org/wiki/Baucis_and_Philemon_(Wikisource)", => T.raw "Ovid"
      T.p =>
        T.a href: "http://en.wikipedia.org/wiki/Bill_and_Coo", => T.raw "Bill"
        T.raw "herds nuclear plasma by day at Mr. Burn&rsquo;s Radioactive Viagra Factory. In the off hours, he builds an open air cathedral in the yard with found and recycled items."
        T.a href: "http://en.wikipedia.org/wiki/Bill_and_Coo", => T.raw "Coo"
        T.raw "? Well, to say that Coo is a gardener is like saying Gandhi was passive-aggressive. Coo has green hands, and she plays the soil like Bach played the organ. The organic chords she creates will resonate for years, producing"
        T.a href: "http://www.patternliteracy.com/permaculture/gaia", => T.raw "crop after crop"
        T.raw "in the back-yard cathedral."
      T.p => T.raw "Bill has invited me over to see his latest creation: a belfrey for the homeless bats in the neighborhood."
      T.p => T.raw "I enter, and the sustainable living channel is playing on the TV in the background: It&rsquo;s a tinker-survivalist guy who shows lots of McGuyver tricks, like how to boil water with items you can easily find in the crawlspace under a modern house."
      T.p => T.raw "I’m not sure that I would survive if my existence was measured in the crawlspace under a modern house. &nbsp;I’d likely find only a concrete slab. &nbsp;Respect to you, Mr. survivalist guy."
      T.p => T.raw "Bill talks about bats and says that the enemy of mosquitos is his friend. &nbsp;Bats do good work. &nbsp;We talk about mosquitos, bats, and bees. &nbsp;Bill has bees, too. &nbsp;Coo approves of honey and pollination."
      T.p => T.raw "We go outside to look at Bill&rsquo;s bees, whose buzzing hives resembles the nuclear plasmas he attempts to herd at his day-job. Reminding myself of Bill’s day job, I keep a watch for three-eyed bees."
      T.p => T.raw "Coo talks of the children: &ldquo;With all the stress at school, teen hormones and peer pressure, it seems everyone is putting things onto the kids, but nobody seems interested in who the kid is. So sometimes I sit with each of my children and ask &lsquo;Who are you?&rsquo; You know, like: &lsquo;How would you describe yourself?&rsquo; &lsquo;Tell me about you.&rsquo; And I just listen, and just keep letting me tell them about who they think they are.&rdquo;"
      T.p => T.raw "As she says that I wonder how I would answer that question. It&rsquo;s pretty deep. Who do I think I am, anyway? And who cares? &nbsp;After I say good-bye and walk back up the hill to visit our fabled Shanghai Tunnels, I make a resolve to ask someone exactly that question."
      T.p => T.raw "As luck would have it, a buddy sits next to me at St. John’s Grand Central Tunnels as I enjoy the inconsistancy of the Portland sunshine. I recap the conversation of Bill and Coo to him and ask: &ldquo;So who are you? How do you approach your day to day life?&rdquo;"
      T.p => T.raw "He looks at me a bit startled. He wonders if I&rsquo;m really serious. I assure him that I really am interested in the human experience. As we talk, we quickly boil away the surface stuff like the price of gas, or the weather, or even who did what to him. That&rsquo;s external, you know, and it&rsquo;s the internal that is important to each of us."
      T.p => T.raw "I keep listening, and only stop him from time to time to get a better understanding of his view of himself. You know, with questions like: You use the phrase, &ldquo;fine deal,&rdquo; how do you recognize that? What has to be present and what has to be lacking for something to be a &ldquo;fine deal?&rdquo; He talks for at least an hour. I have to bite my tongue a couple of times to keep from stopping his flow with my &ldquo;suggestions.&rdquo; &nbsp;Which indicate &quot;who I want you to be&quot; and is exactly the opposite of &quot;who are you?&quot;"
      T.p => T.raw "It&rsquo;s time for me to leave, and as I get up, he says: &ldquo;Thanks, I feel like I know myself better, and I know what I need to do next.&rdquo; I guess it&rsquo;s a powerful thing to know yourself better. What a gift to give to a person: It doesn&rsquo;t cost me a thing to listen, and, I might get a Pabst or two. It sure beats watching Jeopardy re-runs."
      T.p => T.raw "So I walk back down to my palatial estate, and see Bill and Coo quietly multiplexing the duties of builder, gardener, mommy, daddy, companion, provider, nuturer, recycler and sustainer. They wave and say &ldquo;Hi&rdquo; &mdash; I relate my little experience with my buddy a few minutes earlier."
      T.p =>
        T.raw "Bill says: &ldquo;Yeah, it can work that way. We do it together, you know.&rdquo;"
        T.br()
        T.raw "Coo says: &ldquo;Bill has always given me an open ear.&rdquo;"
        T.br()
        T.raw "Bill looks into Coos eyes: &ldquo;And you have always given me an open heart.&rdquo;"
      T.p =>
        T.raw "Coo gives Bill the perfect kiss. A choir of Dwane Eddie Guitars breaks out in"
        T.a href: "http://www.youtube.com/watch?v=uGPG_Y-_BZI", => T.raw "&ldquo;Rebel Rouser&rdquo;"
        T.raw "("
        T.a href: "http://www.youtube.com/watch?v=uGPG_Y-_BZI", => T.raw "http://www.youtube.com/watch?v=uGPG_Y-_BZI"
        T.raw ") and the"
        T.a href: "http://en.wikipedia.org/wiki/Ten_of_Cups", => T.raw "kids dance as the sun breaks through the stained glass windows of the great trees of Baltimore Wood"
        T.raw ".&nbsp;"
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
page = new the_gift_of_who_are_you
console.log T.render page.html

# 
class halloween_2011_midnight_frights extends stjohnsjimtemplate
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
      @post_halloween_2011_midnight_frights()
  # 
  # section post_halloween_2011_midnight_frights
  # 
  post_halloween_2011_midnight_frights: =>
    T.div "#post-halloween-2011-midnight-frights.article.article-type-post", id: "post-halloween-2011-midnight-frights", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Halloween 2011 -- Midnight Frights!"
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
      T.p => T.raw "The Cougar got it all figured out now. Southwick, that goody-goody, had put the final {{{Halloeve:pieces together}}} for her."
      T.p => T.raw "“So, Tommy and Bambi thought they could sleaze one over on me? Bambi wanted to make an illegal buck on Green Elephants. Steven wanted to rustle my critters and run off with my techniques. And Tommy wanted to control them both and suck them dry.”"
      T.p => T.raw "“Steven, at least, was showing some chutzpa. If he had really been competent, he would have flown the coop long ago. Steven, you chose your path, I’m sorry it didn’t work out for you.”"
      T.p => T.raw "But right now there was work to do. Priorities. Protocol. NonSaneO procedures required that all of the spinners be rounded up and relocated to her “research facility” before the end of the fiscal year. Just like in the Army — “All DNA present or accounted for, Sir!” By Midnight, October 31. Midnight. Halloween."
      T.p => T.raw "Crap. I wanted to go party tonight! Damn. Steven and I would have the best costumes. Shit. I will have my OWN damn party!"
      T.p => T.raw "Taking care to put her self together in her most fabulous dress: a long black gown with sequins. Elbow length crimson gloves to match her four foot long hair. Too bad she didn’t have Steven to wear the white tux. He looked great as the sun to her moon. Taking his tie and collar, she fastened it to her 8 foot tall Grizzly- spinner."
      T.p => T.raw "Oh, you don’t know about the Grizzly-spinner? He lives in ground burrows. Like a trap door spider. Only jumps out to snag prey and drag it back to the lair. Except the Grizzly-Spinner is mostly a huge bear. Except for the extra sets of legs, and fangs, and the spider silk glands, and weird eyes. Oh, yes, did I mention the spider mouth? Yea. It morphs back and forth with the seasons and phases of the moon. That’s why Halloween is the big day. The spinners, whether they are bat sized or bear sized, are most active and most needing control at halloween. It’s in their contract."
      T.p => T.raw "Heading out with her Tie and Bib wearing Grizzly-spinner, she makes her way underneath the St. John’s bridge. Her small army of bugs following in tight formation. She rides on the giant bug’s back, massaging and cooing in it’s ear, as it bellows orders to the other bugs in silent bug language."
      T.p => T.raw "Dropping down into Cathedral Park and skirting the river, she makes her way unnoticed in the darkness to Pier Park. A quick survey of the tree-tops by her bat-spiders locates all the “pets” that Steven had stolen from her Forest Park compound. Gathering them to her side, she goes over to 3 Gunas Lp and has her army wait in the shadows."
      T.p => T.raw "She walks up to the door and rings. “Tommy? Bambi? are you ready for some fun?”"
      T.p => T.raw "Tommy answers the door with a towel around his hips: “Hi, I got the hot tub ready. Wanna fuck? Bambi’s here and I’ll let you screw him later.”"
      T.p => T.raw "Thereasa Qugare steps back a few feet: “Oh, no, Tommy, that’s not the fun we are going to have tonight.”"
      T.p => T.raw "Tommy is shocked: “But Roger said you were the best!”"
      T.p => T.raw "The Cougar looks straight at Tommy: “Roger never pissed me off. Roger was reliable. Reliability is sexy, Tommy. You are not.” She lifts her hand and an army of spider creatures scampers across the street with her flying bat-spiders looping and diving overhead."
      T.p => T.raw "Tommy turns white. Dropping his towel, he locks the door, turns off the lights and locks himself in the bathroom. All you hear is Bambi pounding on the bathroom door yelling “Tommy, let me in. Don’t leave me out here with those horrible bugs.”"
      T.p => T.raw "The Cougar waits a few moments and sends her funny creatures into the roof vents. Five seconds later the toilet bowl and sinks erupt in a swarm of crawling things. Tommy goes crazy. He breaks down the bathroom door and falls on top of Bambi. Both naked, they each have a split second moment when they think: “Do I want to worry about groping a naked man or get away from these spiders crawling up my legs?” A moment later, they explode out the front door."
      T.p => T.raw "They see Thereasa Qugare in all her power, riding on the back of a nine foot half-bear half-spider with its legs groping in all directions. Tommy and Bambi go all directions at once."
      T.p => T.raw "“STOP!”"
      T.p => T.raw "Giving her bat-spinners flight like ancient falcons controlled by spider threads to each of her fingers. Thereasa’s hands play a hula on her silken harp. Quickly Tommy and Bambi are snagged. Then raccoon and squirrel chimeras wrap both up thoroughly and hang them from the rain gutters."
      T.p => T.raw "Standing on her mounts back, it lowers itself down until it’s fancy bow-tie is on the lawn. Smaller bugs weave web stairways for her decent. Moving like a roller skater down the network, she finally comes down to Tommy."
      T.p => T.raw "“Tommy, I know you can hear me. You’ll be able to move soon, and you’ll likely get down by morning. you wanted to have fun first. You get your wish. I want you to know how totally out of your league you are. You can fool all the people some of the time, but Tommy, honestly if you fool yourself you fool yourself all of the time.”"
      T.p => T.raw "She walks over to Bambi, his antlers scraping the ground. “Bambi, I know all you want to do is make a buck, but has any of Tommy’s schemes worked? Ever? For more than two days before it fell through? Do you see a pattern here?”"
      T.p => T.raw "Muffled sounds come out of the hanging cocoons."
      T.p => T.raw "Thereasa fininshes: “I’m tired now. I do not like making house calls. Don’t screw with me again.”"
      T.p => T.raw "Roger appears at the front door. He has an uncanny ability to move, but only when no one is looking at him. That’s death, I guess. “Hi Ms. Cougar.”"
      T.p => T.raw "She looks at Roger carefully: “Roger, is that you? You aren’t alive.”"
      T.p => T.raw "Roger says: “Yup, all fungus now. Back to the soil. Kinda fun there. The great fungal underground you know.”"
      T.p => T.raw "She replies: “I’ve heard about it. It can wait for me, thanks.”"
      T.p => T.raw "Roger replies: “No hurry.”"
      T.p => T.raw "Thereasa says: “Untill that time. Right now, I just need to get back across the river and back to sleep.”"
      T.p => T.raw "And so quiet returns to St. John’s and all is well in Pier Park."
      T.p => T.raw "But what happened to Steven? Some say he started another research facility on an island in the pacific. Some say he just ran away when the bugs became too hard to control."
      T.p =>
        T.em =>
          T.strong => T.raw "Steven, You Kissed The Sun and Now You Sleep With the Moon"
      T.p => T.raw "But what I think, is that he paid the price of losing control and is still hanging high up in the cedars of Pier Park. Poisoned and encased in a bag of spider silk."
      T.p => T.raw "And only during the darkest of new moons at halloween some folk say that they hear a faint voice calling “Thereasa, help me.”"
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
page = new halloween_2011_midnight_frights
console.log T.render page.html

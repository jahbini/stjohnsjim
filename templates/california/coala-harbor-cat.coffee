# 
class coala_harbor_cat extends stjohnsjimtemplate
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
      @post_coala_harbor_cat()
  # 
  # section post_coala_harbor_cat
  # 
  post_coala_harbor_cat: =>
    T.div "#post-coala-harbor-cat.article.article-type-post", id: "post-coala-harbor-cat", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Coala: Harbor Cat"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/california/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "I had two cats, Cobbee and Coala, when I lived on my boat in Santa Barbara Harbor. I’m enlisting my old buddy Southwick from Pier Park – He runs seances and stuff like that."
      T.p => T.raw "Jim: Southwick, here’s your assignment. Make a voyage to the akashic bar and grill, where all the fogged memories of mankind are stored, and get Coala’s statement."
      T.p => T.raw "Southwick:  Woo, Woo, Woo, Bookoo Snafoo.  Akashic records now I view."
      T.p => T.raw "Jim: That’s just freaking corny.  Are you sure that’s how to channel a cat?"
      T.p =>
        T.div()
        T.raw """
Southwick: Take a back seat, buddy. Let me work here.   – Coala, Coala, make yourself known-la.
"""
      T.p => T.raw "Jim: &quot;known-la?&quot; – give me a break."
      T.p => T.raw "Southwick: Butt out. Shhh."
      T.p => T.raw "A voice: Miaw?"
      T.p => T.raw "Southwick: Hey, Coala! Miaw! Come, sit wit me. I’m a friend of Jim, your old chum. Lemme know wassup?"
      T.p => T.raw "Coala: Jim? Yeah, he was OK. Chum?  I love chum.  It’s fish scraps.  You gonna pick up the tab?"
      T.p => T.raw "Southwick: You know me, I’m good for it, as long as there’s a good story in it. Hey! Bartender! Gimme a high colonic with a chaser of holy water, and what ever my friend here wants."
      T.p => T.raw "Coala: water and fish offal. It’s my favorite! You know I never got that since I moved from the Harbor."
      T.p => T.raw "Southwick: Fish offal? um. Er…. (silence.) Anyway, how’d that harbor life work out for you? Anything fun happen there?"
      T.p => T.raw "Coala: Yeah, sure! I got to sit in the Santa Barbara sun in the afternoons. Cobbee and I shared the boat with Jim. Cobbee and I would pry open his crock-pot and scatter his dinner around the boat when he was gone.  We were careful, though, he knew all these human tricks."
      T.p => T.raw "Southwick: Tricks?"
      T.p => T.raw "Coala: Yeah, magic stuff, like how to lock doors and move his fingers and shit. Make real demons! He could turn dead snakes into demons. Make food appear by magic. Human stuff."
      T.p => T.raw "Southwick: I got the moving fingers thing, but what about the snakes?"
      T.p => T.raw "Coala: Snakes hate cats. They are evil kitten killers, and we got to put the big fear into ‘em. It’s fun, too. Jim could make dead snakes come alive with his demon magic."
      T.p => T.raw "Southwick: You mean like when Jim would shake a some rope for you to play with?"
      T.p => T.raw "Coala: Rope? Yeah. And boat-lines and yarn snakes too. Lots of ‘em in the harbor. They would be dead. Dead, dead. And Jim would pick one up and POW! It lives! I would kill it every time!"
      T.p => T.raw "Southwick: You really know how to have fun."
      T.p => T.raw "Coala: You said it buddy! I hung out on the dock most afternoons. I’d sleep, or watch the other boats for signs that their dead snake boat-lines would turn into demons. I would watch the birds. I would keep the gulls off track as I looked for fish heads on the docks. That kind of thing."
      T.p => T.raw "Southwick: What was the craziest thing that happened there?"
      T.p => T.raw "Coala: Well, sometimes Jim would set sail. That was usually not fun. Cobbee hated the ocean and got real cat-sick to show how much he hated it.  Jim lost lots of shirts to Cobbee’s puke.  Me? I had survived all the sea demons, so I knew it would be all right."
      T.p => T.raw "Southiwick: Sea demons?  What were the sea demons like?"
      T.p => T.raw "Coala: Yeah, ALL of the Sea Demons. I’m a survivor."
      T.p => T.raw "Here’s how it went down: Jim often let me wander in the afternoons, and sometimes he left the hatch open at night. I’d jump on deck. There were never any seagulls out at night, so I went to all the boats I could."
      T.p => T.raw "There was one boat that had a whole bag of chopped frozen fish on the deck. I couldn’t resist, and jumped up to get my share before the sun came up."
      T.p => T.raw "Just then, three big humans walked right ON the boat! Oh, shit. Untrained humans. You never know what they might do. That’s why it’s important to train as many humans as possible. I had never trained any of these guys, so I ran to hide in a little box in the cockpit.  I was safe.  Or so I thought."
      T.p => T.raw "I waited for them to go, but instead, they woke up a growling evil demon inside the boat that wanted to eat me. The boat rocked back and forth like an earthquake. I hid. I thought I was going to die. Shit. Humans. Fucking magic."
      T.p => T.raw "Southwick: Yeah, The engine, I guess, that must have been scary."
      T.p => T.raw "Coala: You said it, bub. Hey, when’s my order going to be ready? I want my meal."
      T.p => T.raw "Southwick: Um. It’s coming, here, have this instead."
      T.p => T.raw "Coala: Wow. A piece of soy with the flavor of chicken heart.  Is that all you got?"
      T.p => T.raw "Southwick: (squirm), Um. soon, soon.  So what happened on the boat? After they started the engines?"
      T.p => T.raw "Coala: Well, it must have been about an hour, and then they killed the engine demon. But the earthquake was worse. I was just getting sick, when one of the guys open up my hiding place and stuck his hand in! His magic human hand!"
      T.p => T.raw "I tell you, I let out a shriek and jumped right out! I sailed through the air from the cockpit to the deck. There were two humans their with huge sticks in their arms!"
      T.p => T.raw "Southwick: “You mean fishing poles?”"
      T.p => T.raw "Coala: No, sucka! They were sticks with snakes that had nasty teeth!"
      T.p => T.raw "Southwick: “You mean fishing line and hooks?”"
      T.p =>
        T.div()
        T.raw """
Coala: Hey, don’t interrupt me. I’m just getting to the scary part.
"""
      T.p => T.raw "Southwick: MORE scary?"
      T.p => T.raw "Coala: So I land on the deck and these guys are freaking out. Anything is better than being sick on a boat with the engine demon wanting to eat me and being surrounded by magic humans with snakes with teeth. So I jump back on to the dock."
      T.p => T.raw "Would you believe it? These humans had made the dock disappear! They made the whole freaking harbor disappear. All there was was water everywhere. And I was in it! Talk about a demon. Water is the worst. You can kill a snake, but you can’t kill water."
      T.p => T.raw "I fought hard to keep the water demon from swallowing me. I don’t know how long I fought and I was nearly ready to give up, and a miracle happened! I was lifted out of the water by magic snakes! The humans had trained these snakes to hold hands somehow. I was put back on the deck. Wet."
      T.p => T.raw "Southwick: Holy, Holy, Hosannahs! By the eyes of the Saints! A Miracle!"
      T.p =>
        T.div()
        T.raw """
Coala: Yeah, They called it a fishnet, but it wasn’t made of fish. Stupid name. They should call it snake nest, if you ask me. I hate snakes. Do you know how humiliating it is to be saved by skinny snakes?  And I’m all WET?! That’s really insulting. That’s the kind of magic that freaks me out.  Jeez, humans.
"""
      T.p => T.raw "Anyway, I ran down to the lowest part of the boat. It was the farthest from the water that I could get. And nowhere the humans could go."
      T.p => T.raw "Southwick: What happened then?"
      T.p =>
        T.raw "Coala: I waited. After a while, the humans started the engine demon again.  I kept hiding and waited till afternoon. The humans stopped the engine, turned off the earthquake and left the boat. I waited till evening. It was quiet. Someone came a couple of times and pretended to be mama. It could be Jim, but I didn’t trust any human. After all, where was"
        T.em => T.raw "HE"
        T.raw "when the dock disappeared!"
      T.p => T.raw "When the moon was up, and I could see that it was really him, I came out and he took me home.  The ordeal was over.  I survived."
      T.p => T.raw "And he had dinner ready too.  So, Southwick buddy, what about my fish? Are you gonna pay up?"
      T.p => T.raw "Southwick: Well, Er. Um."
      T.p =>
        T.div()
        T.raw """
Coala: Hey! What are you? An akashic cosmic welcher? You said I get fish offal!  Watch out or I’ll pee on your underwear.
"""
      T.p => T.raw "Jim: Holy cat piss! Southwick! Mandatory meeting! Give Coala what he wants! It’s a good story."
      T.p =>
        T.raw "Southwick: What are you doing in this seance? And,"
        T.em => T.raw "pu-leeze"
        T.raw ", entrails? My Jagged Guru would NOT approve."
      T.p => T.raw "Jim: Southwick, don’t pull any &quot;holier than thou&quot; crap when you read the Akashic Records.  I want my underwear without cat pee on ‘em."
      T.p => T.raw "– Hey, Coala, good buddy, you remember me? Miaw, Purr, Purr. Here is your fish: you know fish offal isn’t good for you: it causes you to break out in bumps. Purr. Next time let’s stick to real cat food, OK?"
      T.p => T.raw "Coala: Thanks Jim. You’re OK too, but your food is pretty boring."
      T.p => T.raw "Jim: Ciao and Miaw for now, Coala, thanks for the story.  You can feast all you want here at the Akashic Bar and Grill.  It’s always afternoon in Santa Barbara for you my good cat.  Plenty of fish for you.  It’s all on my tab: after all, I’m the author."
      T.p => T.raw "And that’s what harbor life was like for a cat in Santa Barbara, CA. As far as Southwick, I’ve asked him to teach ALL of my characters how to channel.  My underwear can’t afford to be at the mercy of Southwick’s Jagged Guru. How come there are no smooth gurus?"
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
page = new coala_harbor_cat
console.log T.render page.html

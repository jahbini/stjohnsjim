# 
class truck_fight extends stjohnsjimtemplate
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
      @post_truck_fight()
  # 
  # section post_truck_fight
  # 
  post_truck_fight: =>
    T.div "#post-truck-fight.article.article-type-post", id: "post-truck-fight", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Truck Fight"
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
      T.p => T.raw "Tommy loves truck fights. He got into one just last week."
      T.p =>
        T.raw "Tommy loves to squeal his tires past his"
        T.a href: "http://stjohnsjim.com/story/show/187/Dateline:%20St.%20John&#39;s!%20Breaking%20News!#squeal", => T.raw "ex-lover’s houses"
        T.raw ". It makes him feel like he is not forgotten in this world: a big tie to humanity for Tommy. This time he popped up at Portland’s Own Malibu: Baltimore Wood. That ribbon of forget-me-not that forms St. John’s border on the Willamette. Downhill from Baltimore Wood, it is “that” side of the tracks."
      T.p => T.raw "And you guessed it, he popped truck wheelies all day, all night long. The cops set up a watch for a day or two, but as soon as the cops went away, he came back. Annoying? You bet."
      T.p => T.raw "Winnie Daough wanted to leave a stump in the road. Pathy had to reminder her that the streets are paved in Baltimore Wood. Mostly. And that stumps in the road might get Winnie into trouble. Pathy wanted to post it on the internet as an audio clip and see if anyone could identify it. Winnie said “get real”"
      T.p => T.raw "They were talking with Station the next afternoon, and Station was visibly upset: “Tommy - He’s so stupid and cruel. I won’t ever see him again, you hear, never. No matter how much he harrasses me. — That’s his style. Then as soon as he figures you need money or whatever, he is right there to dangle it in front of your face! Fuck you, Tommy! I’ll never fall for that again!”"
      T.p => T.raw "“But I feels so funerable” He wails. Just then Leo walks up: “Station? What’s this? You and Tommy?” Station looks very ashamed: “I didn’t .. was when we were having our ‘trouble’, I told you about it. I didn’t want you to know how much it bothered me.”"
      T.p => T.raw "Leo looks deep into Station’s eyes and says “Yes, I know, That’s all in the past. Don’t worry, I’ll make sure that Tommy never bothers you again. Because Right Now, I’m Personally Pissed At Tommy.”"
      T.p => T.raw "Then according to strict Union Rules of Confrontation in the Ranks, Leo went down to the administrative offices of WaterFront U, and submitted his potato in triplicate to Tommy’s exhaust pipe."
      T.p => T.raw "The challenge was clear, clearly accepted and noted by the counter calls of trash talk. Midnight. Parking Lot “B” — that was the best location: right downhill from Winnie and Pathy’s toilet. They made a party of it. Drawings of exploding trucks in black-lite poster colors on the walls. Winnie and Pathy sat on stools in the shower stall and Station sat sideways on the throne as they watched the carnage below."
      T.p => T.raw "The trucks began to rumble. It was demolition derby: plain and simple. A bit more cerebral than a simple game of chicken. Do enough damage to disable your opponent. Winner gets the pink slip."
      T.p => T.raw "Tommy, figured a simple head-on would be the quickest, but Leo favored a strategy the would have flipped Tommy over. As it was, Leo avoided Tommy’s head-ons, and Tommy squealed away from the clinches. The noise was deafening."
      T.p => T.raw "About this time, the wailing coming from the toilet was as loud as the wailing of the engines below. Station crying “I can’t look,” Winnie yelling “Yipper-Marie!” and Pathy moaning “Ohhh-Baby” in time to the revving of the engines. I needed to clear my head and went outside to take a leak. On the way back, I looked out over the slope to Parking Lot “B:” Tommy had backed his pickup as far as he could while while Leo did figure eights in front. A stand-off."
      T.p => T.raw "I leaned over farther to see Tommy’s Pickup better and slipped. Scrambling around, trying not to slip down into the parking lot I grab a tree-root and hold on: “It’s stupid to bring a human body to a Truck Fight,” and other words of wisdom pass through my mind. But nothing helpful about how to get out of this situation. I’m about to slip under Crazy Tommy’s pick-up truck! And nobody can hear my shouts for help over the noise from ladies above and the Pickup Engines below."
      T.p => T.raw "I slip another inch. The root bundle in my fingers is breaking bit by bit. I make a wild grab over my head. I grab another low branch — and a pair of eyes look straight at me as I pull the branch right out from under them. A wild animal cry and our Mayor, the cat Felix Merton screams bloody hell as he tumbles down into Tommy’s truck and then leaps into the only quiet place: the cabin of Tommy’s truck."
      T.p => T.raw "Tommy makes some really fast movements with his hands: a bit like a toddler trying to shoo a horde of locusts. Felix plants his teeth in Tommy’s ear and his truck goes into high speed and rams the tail of Leo’s Truck. The two trucks are wedged together, each one on only two wheels. The engines whine like tornadoes."
      T.p => T.raw "Just then Tommy explodes from his truck and falls on his face on the pavement. He gets up a bit bloodied from cat scratches. Merton completes his get-away and by the time you read this, is likely hiding under Pathy’s bed. Tommy, however, has many miles to travel before he sleeps tonight. He limps away, his pants soaked."
      T.p => T.raw "Leo is dazed from the spin his truck got, and barely climbs out the door of his pickup. Not realizing he is five feet in the air from the collision, he trips and hangs by one leg as he gets out."
      T.p => T.raw "Tommy is half-way across of Parking Lot “B” and looks around. He sees Leo in a vulnerable position. He takes stock: no major damage. Ear bit through in several places. OK. Cat scratches on face, neck and arm. An irritation, but nothing more. A piece of cat-claw in a lip. No biggy. And the thought goes through Tommy’s head: “Even though I’ve been beaten up by an alley cat, pissed my pants, and run off like a coward, I can Beat This Guy!”"
      T.p => T.raw "Tommy starts coming back toward Leo. I’m shouting to Leo to get himself free. He will be dog meat if Tommy gets to him. I’m still stuck in the tree branches, and scrambling to free myself from the tangle. Before I can make it to Leo, I see Station appear out of nowhere."
      T.p => T.raw "Just as Tommy gets to Leo, Station jumps into his PoeKoeLan stance: One hand high, one hand low. One hand in, one hand out. He steps and dances. Tommy faces Station. “You think I’m afraid of you? You mahu?” One thing Tommy is sure of. He has been 100% sure of it all his life. He is big, his opponent is small. Tommy wins. “You think your 125 pounds can whip my 240? I’ll crush you. Starting now.” He moves forward toword Station like a tank."
      T.p => T.raw "Station is all over Tommy with a vengance. Tommy never had a chance. The martial arts of the South Pacific Islands are pretty fierce: Station’s years of PoeKoeLan and Silat have given him the terror of a South Seas Pirate. Tommy’s years of braggadocio have given him the bowels of a bull. Tommy’s pants are now not just wet, but soiled, and his neck is sprained and his elbow dislocated. Oh, yes, and two ribs broken. I get there just in time to help Leo as he dangled upside down from the foot-step of his truck. Station drags Tommy by his arm over to Leo."
      T.p => T.raw "Tommy is looking up at Leo and Station. Station looks up at Leo and says: “Did I do OK? Leo? Did I go crazy again? I’m sorry.” Leo says: “I’ll take care of it. You did good.”"
      T.p => T.raw "Leo looks at Tommy: “Ok, here’s the deal: I drive you in your truck to the parking lot of the Hope for Health Bar. I leave for fifteen minutes. You go in and say you were accosted by Lesbians. I’ll send a stringer to Fox News about the Lesbian Gangs of St. John’s and by the time it cools down, nobody will know you were having sex with my lover-man Station!”"
      T.p => T.raw "Leo finishes: “And we both know how much you don’t want your co-workers at WaterFront U to know about that.” Tommy realizes when he’s lost."
      T.p => T.raw "Leo: What a guy."
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
page = new truck_fight
console.log T.render page.html

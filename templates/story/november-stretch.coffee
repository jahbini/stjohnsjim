# 
class november_stretch extends stjohnsjimtemplate
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
      @post_november_stretch()
  # 
  # section post_november_stretch
  # 
  post_november_stretch: =>
    T.div "#post-november-stretch.article.article-type-post", id: "post-november-stretch", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "November Stretch"
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
      T.p => T.raw "(Author’s note, I have some subscribers who wish to read on their handheld. This is OK, and I hope you are able to follow. Some formatting is lost in text-only mode, and I will attempt to make your reading easy. Thanks for your patience.)"
      T.p =>
        T.raw "Hormel makes a tasty (?) meat based product that does NOT clog up your e-mail system. The Politically Correct folks here in Oregon (PC-PNW) require us to refer to this e-mail thing as"
        T.em => T.raw "valueless input to your daily e-mail tasks."
      T.p =>
        T.raw "Today I got an e-mail with the Subject Line: This e-mail suspected of containing"
        T.em => T.raw "valueless input to your daily e-mail tasks."
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I’ve never seen that amount of creativity in a Subject line for such nanny balls. Almost read it because of the blatent honesty."
      T.blockquote =>
        T.p => T.raw "Southwick wants more umph in his prank for Tommy. So he has asked me for another favor. (Shees! Is there nothing this guy won’t ask for?) He figures if he puts some mouse droppings in strategic locations Tommy will keep up his happy mouse hunt. It’s not like Tommy puts out the bait and waits for nature to take it’s course."
        T.p => T.raw "Tommy puts invisible thread on each bait to see if a mouse might have disturbed it. It’s all in the CIA dossier he opened."
      T.p => T.raw "I’m in the James John Cafe and I’m thinking about mouse droppings. And that just doesn’t fit, you know: The Cafe is as bank-vault spotless as you can get: Yep they have a bank vault."
      T.p =>
        T.raw "But knowing that there are no mice therefore no droppings and it would be offensive to suggest in the sanctity of the Cafe? That forbidden aspect just seems to make me want to ask. Like me walking up to you and saying: “I’ll take a side order of mouse droppings to go,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "“."
      T.p =>
        T.raw "Crap, I"
        T.em => T.raw "could"
        T.raw "go over to the Puking Mule tavern and I wouldn’t even have to ask: They are free for the taking. But I’m not about to Puke my Mule. I might ask Nobrow to check it out."
      T.p =>
        T.em => T.raw "&gt; —Hello, 911, This is Southwick. I said “hey buddy , don’t Puke your Mule,” He got all crazy and started attacking me: I’ve locked myself in the “Hope for Health” bathroom, hurry 911, the door won’t last much longer…"
      T.p =>
        T.raw "Nobrow. A very interesting guy: Well read, smart, friendly to everyone, vibrant. Looks like a heavy from an Indiana Jones movie, with"
        T.a href: "http://www.google.com/search?rls=en&amp;q=will+rogers&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Will Roger’s"
        T.raw "open charm. If he had the proper education, he could have been the president of Harvard."
      T.p =>
        T.raw "But in St. John’s, he is Mr. Street, Mr."
        T.a href: "http://www.google.com/images?rls=en&amp;q=mr+clean&amp;oe=UTF-8&amp;um=1&amp;ie=UTF-8&amp;source=univ&amp;ei=0IfoTIL0J4aisQPhzPmwCw&amp;sa=X&amp;oi=image_result_group&amp;ct=title&amp;resnum=1&amp;ved=0CC0QsAQwAA&amp;biw=1043&amp;bih=596", => T.raw "Clean Street"
        T.raw ", that is. His pockets are empty mostly, whatever money he does get seems to come from honorable actions. So far, so good: But what is with his relationship with Throntle, needle jungle Throntle, poop smearing Throntle, from Tommy,OR? He just loves her. Plain and simple. Is he on some weird drug or other?"
      T.blockquote =>
        T.p => T.raw "Nobrow has organized the hookers of St John’s to stage a sit-down protest at the food carts until NO Amoebas are there: “We are the lepers of society and we will sit here until the shopkeepers keep those ungodly amoebas away!”"
      @todays_tarot_reading_()
      T.p => T.raw "The cards today are the Nine of Cups, the 8 of Pentacles, and the four of wands. (At this point Kermit Shouts “Yaay, Four of Wands”)"
      T.p => T.raw "The Four of wands isn’t really an end, it is a benefit. One of the highest."
      T.blockquote =>
        T.p => T.raw "That’s right in line with this e-mail — You will find it doesn’t “end” with a boffo finish. The personal interactions of Last Month’s Cougar-Spider Halloween Farce required no build up at all, and the story of Throntle and Nobrow is so complex, you will just have to get bits and pieces of their story."
      T.p =>
        T.raw "From what I see so far, there is material worthy of"
        T.a href: "http://en.wikipedia.org/wiki/George_Bernard_Shaw", => T.raw "George Bernard Shaw"
        T.raw ". Thank you, Oh Muse, may I be worthy to tell your many stories."
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", you will just have to keep reading."
      T.p =>
        T.raw "This Tarot reading is totally random but is such a happy reading, Southwick is amazed. He is easily amazed, like"
        T.a href: "http://www.myspace.com/j0lietjakeblues/blog/476795617", => T.raw "Mr. Rogers"
        T.raw "."
      T.ul =>
        T.li => T.raw "The Nine of Cups is emotional completeness, ready to use harmony that you can call on in your life."
        T.li => T.raw "The Eight of Pentacles is: Build it and you will make a profit. This is your path to prosperity."
        T.li => T.raw "The Four of Wands is “Civilization is better because of this”"
      T.p => T.raw "I’m such an egomaniac, that of course, I feel this way about these e-mail stories, and the way I write them. I’m doing my bit to make the world a better place by these stories. Insane? Yes, but desperate men will take haven where they may."
      T.p =>
        T.raw "Another, more realistic view might be the life of Johann Sebastion Bach. Master of human emotions, making a living with his craft of music: the whole of humanity benefits. Now"
        T.em => T.raw "that is"
        T.raw "what wisdom is all about!"
      T.p => T.raw "It just takes time, patience and perseverance. Makes you wanna go Yeeee Haaa!"
  # 
  # section todays_tarot_reading_
  # 
  todays_tarot_reading_: =>
    T.h3 "#todays-tarot-reading-", id: "todays-tarot-reading-", => T.raw "Todays Tarot reading:"
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
page = new november_stretch
console.log T.render page.html

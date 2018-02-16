# 
class mothers_day_and_the_parade_of_the_johns extends stjohnsjimtemplate
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
      @post_mothers_day_and_the_parade_of_the_johns()
  # 
  # section post_mothers_day_and_the_parade_of_the_johns
  # 
  post_mothers_day_and_the_parade_of_the_johns: =>
    T.div "#post-mothers-day-and-the-parade-of-the-johns.article.article-type-post", id: "post-mothers-day-and-the-parade-of-the-johns", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Mother's Day and the Parade of the Johns"
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
        T.raw ", Mother&rsquo;s Day celebrates the efforts of moms to endure discomfort and toil endlessly to nurture the family. A mom&rsquo;s efforts dwarf those of Hercules. You want an example? Keep reading about what happened to Glynnis during the Parade of the Johns."
      T.p => T.raw "The Parade of the Johns was Tommy&rsquo;s idea. It isn&rsquo;t to be confused with the St. John&rsquo;s Parade. The St. John&rsquo;s Parade is a real serious event: the last years Parade Marshal was Ronald McDonald. Really. They got DNA and everything."
      T.p => T.raw "Only Tommy, who was a child prodigy as a mafia runner, and now is ethics professor at Waterfront U could come up with this way of celebrating Mother&rsquo;s Day by getting the sexes together. He cooked it up with the local bars and hookers."
      T.p => T.raw "The parade is a way for the hookers and johns to get together. Kind of a 5 minute speed date. It started about noon Sunday and ran to closing time. The johns get a souvenir key-fob and go from bar to bar in St. John&rsquo;s drinking and interviewing their potential &ldquo;milf of the moment.&rdquo; If everything goes well, johns can get the hooker&rsquo;s key for their fob."
      T.p => T.raw "This parade was special, because Rosie, St. John&rsquo;s first gay male hooker, was having his &ldquo;Grand Opening.&rdquo; &nbsp;He wore silver lam&eacute; and lemon pledge perfume. &mdash; I respect your path, Rosie, but St. John&rsquo;s might be a poor choice for your business plan. Still, no matter how bizarre someone may be, if they are really fantastically good at what they do, society accommodates them and they set standards for others to follow. Competency offsets deviancy. Time will tell."
      T.p => T.raw "The Hope for Health Bar and Urinal was a major stop-over during the parade. I was there with Southwick, my spiritual bodyguard, sharing a gallon of ultra-light beer. You know, the one with the slogan: &ldquo;your bladder will bust before your lights go out.&rdquo; (drink responsibly)."
      T.p => T.raw "Of course, the usual ladies were there, (yes, Throntle, I&rsquo;m going to mention you. Nicely this time, so don&rsquo;t put salt on my fuchsias again, OK? Please?) Throntle held her private, VIP only, services in the dumpster out back. She had made sure that Crandal, the bar&rsquo;s owner had steam-cleaned the dumpster for this event."
      T.p => T.raw "What was not expected, was that Glynnis was behind the bar. The regulars love Glynnis. She isn&rsquo;t showy, but is one of the sweet ones. She&rsquo;s a working mom with three kids under ten years old. Good service, accurate, tolerant, and able to go with the flow, and keep the barroom feng-shui going in the right direction. For some reason, the bar&rsquo;s owner, Crandal, had let the Nobrow, the bouncer, have the day off. Worse yet, Glynnis wasn&rsquo;t tipped off about the johns."
      T.p => T.raw "When the owner came in, Glynnis confronted Crandal about the confusion, and was really not happy about all the john&rsquo;s asking for her key. Crandal and Glynnis had words."
      T.p => T.raw "Crandal already had a poor reputation with our locals. He had run the Lumberjack Sciences Department over at Waterfront U, and had gotten lots of guys to sign up for expensive classes: climbing 101, remedial limb lopping, pitch removal 210, sawing 411, with advanced internships in chopping. The University got lots of money in student loans, but unfortunately, the lumber industry isn&rsquo;t what it used to be: It&rsquo;s an old St. John&rsquo;s story. More workers than jobs &mdash; I think Steinbeck mentioned it once or twice in &ldquo;Grapes of Wrath&rdquo;."
      T.p => T.raw "When Glynnis got back from tapping a new keg in the keg room, she saw Crandal and said: &ldquo;Hey, These guys been hitting on me all day long. When I got on shift, I got your note saying we needed to promote Tommy&rsquo;s St. John&rsquo;s Parade and I should wear this green ribbon. I just found out means I&rsquo;m available. Nobody told me anything about a Parade of the Johns. And where the hell is Nobrow?&rdquo;"
      T.p => T.raw "Crandal uses lots of gestures as he talks. His hands move like snakes. &ldquo;Did Tommy say St. John&rsquo;s Parade? I thought everybody knew about the Parade of the Johns. We just came up with it a couple of days ago and sent text messages to everybody. Maybe you kinda got left out. Too bad. Look, I got a place to run, It helps business. Nobrow got sick from eating here last night. We all hope for his health, until then you just have to deal with it. By the way, change the paper in the ladies room. Anyway, I gotta hot new key on my fob and I gotta check it out.&rdquo; and he walked away."
      T.p => T.raw "Glynnis turned a couple of shades of red, then purple. She said: &ldquo;This is Mother&rsquo;s Day, and I&rsquo;m a working mom, so I work. But are you insane?&rdquo; She used some words that her mommy never taught her. Crandal turned back and replied: &ldquo;Watch what you say, you &hellip;&rdquo; He never finished. Rosie, whose love for his mom is as extreme as his behavior, started leaping up and down like a salmon, his codpiece gyrating crazily, crying: &ldquo;The Boogy-wumps! The Boogy-wumps!&rdquo; and &ldquo;You mommie hater!&quot; and &quot;Give me my key back!&rdquo; Crandal froze. The locals went wild."
      T.p => T.raw "In the confusion, Crandal got sucker punched by one of the locals. The patrons maintain that Crandal had simply slipped on the floor. Crandal is in a bad place. He wants to file charges, but nobody&rsquo;s talking. He knows he could face a sex harassment suit, he missed his only chance with Rosie, and his &ldquo;Hope for Health Bar and Dumpster&rdquo; lives or dies by the will of the locals. Judge Rosie gave the verdict and the crowd delivered: &ldquo;Don&rsquo;t screw with Glynnis and never, ever on Mother&rsquo;s Day.&rdquo;"
      T.p => T.raw "I expect his hospital stay to be short but expensive. Glynnis finished her shift with an overflowing tip jar. The Parade of the Johns was a huge success –&nbsp;Tommy says he will schedule the next one on Thanksgiving Day."
      T.p =>
        T.raw "By the way,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", what the hell does &ldquo;The Boogy-wumps! The Boogy-wumps!&rdquo; mean?&nbsp;"
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
page = new mothers_day_and_the_parade_of_the_johns
console.log T.render page.html

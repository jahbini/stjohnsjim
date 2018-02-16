# 
class give_him_what_he_needs extends stjohnsjimtemplate
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
      @post_give_him_what_he_needs()
  # 
  # section post_give_him_what_he_needs
  # 
  post_give_him_what_he_needs: =>
    T.div "#post-give-him-what-he-needs.article.article-type-post", id: "post-give-him-what-he-needs", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Give Him What He Needs"
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
        T.raw "(Jim’s Note: Another one by request. &nbsp;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", this one doesn’t have any boffo laughs, so I’ll have to owe you one. &nbsp;I promise I’ll make it up to you. &nbsp;Read this and think what you might want to ask the wise one.)"
      T.p => T.raw "The Old One feels infirm.&nbsp; His wife had died.&nbsp; He is the elder of the village, and he is asked for his opinion every night.&nbsp; And even if he rambles, all the village still listens."
      T.p => T.raw "One morning he rises and asks for a horse."
      T.p => T.raw "He had not kept or cared for his horse for many years.&nbsp; His sons did that, and he never rode &quot;angry mane&quot; at all.&nbsp; Angry Mane was old too, but was the horse that the&nbsp; Old One wanted.&nbsp; Angry Mane died a few seasons back, and another was never really needed, since the&nbsp; Old One has not ridden a horse for 4 days of the &quot;dead Sun&quot; when the sun lies at the bottom of the sky, and only sacred magic of the Gods brings the sun back."
      T.p => T.raw "So when the&nbsp; Old One asks for a horse, the sons are deferential, and explain that &quot;angry mane&quot; is dead and that he can ride this new steed of fire.&nbsp; Even though the new steed is old and broken down: the gentlest ride in the tribe."
      T.p => T.raw "And the old man tries to mount the horse,&nbsp; He fails repeatedly, and his sons give him a lift on to the back of the horse.&nbsp; He has the horse walk very slowly. &nbsp; And the women look on at this wise, old man acting so odd.&nbsp; And he becomes the topic of the morning."
      T.p => T.raw "The chatter of the ladies causes the chief to go over to the women’s circle and call out his wife.&nbsp; He asks: &quot;What is happening in our village that has all the ladies so chatty&quot; – &quot;My Stallion, I must report that our elder has mounted a horse and is barely moving&quot;&nbsp;"
      T.p => T.raw "The Chief now walks over and asks the&nbsp; Old One where is he going, and will he be back for the evening meal.&nbsp; The&nbsp; Old One says that he must visit &quot;great night&quot; – And the chief asks if the&nbsp; Old One knows the way, and the&nbsp; Old One thinks and nods: &quot;oh, yes, Gourd-Shaker knows, I need to have Gourd-Shaker guide me&quot;"
      T.p => T.raw "And so Gourd-Shaker is summoned and he is told that the&nbsp; Old One is to visit the land of great night. &nbsp; And Gourd-shaker says &quot;we need much preparation&quot;&nbsp; –&nbsp; For the tribal elder to visit the great night, the shaman wants to have a great festival."
      T.p => T.raw "The chief goes over to the&nbsp; Old One and says:&nbsp; Gourd-Shaker wants 5 days to prepare your voyage, and we have many questions to ask you before you leave:&nbsp; And the&nbsp; Old One said that he would wait 5 days and nights, and answer all the tribes questions."
      T.p => T.raw "And plants were gathered, and hunters went out and brought a great feast.&nbsp; And a fire was built that was bigger than usual, and was to be well stocked with fuel for five full days, and it would channel the source of wisdom for the&nbsp; Old One, but Gourd-Shaker was strong in his statement that it must burn day and night for the full five days.&nbsp; And wood was gathered that would last for five days."
      T.p => T.raw "The preparations over, the evening settled in, and the chief spoke: &quot;we are here to give the elder a journey to great night, we will Give Him What He Needs to make that journey.&nbsp; And in return, he will answer all the questions that you ask:&quot;"
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", What would you ask?"
      T.p => T.raw "And when the feast was over, and the&nbsp; Old One rose the next morning, the Chief and Gourd-Shaker were there:&nbsp; The Chief asked the&nbsp; Old One again if he was going to great night, and the&nbsp; Old One said &quot;Yes, the time is near when I visit great night&quot;"
      T.p => T.raw "And Gourd-Shaker and the elder rode slowly away. &nbsp; Gourd-Shaker said that you can only ride a horse part-way to great night.&nbsp; The&nbsp; Old One said that he knew that too, but did not know what other transportation was needed."
      T.p => T.raw "That’s because it is a very great secret of the night gods:&nbsp; The night gods come down when called and visit night god valley. &nbsp; We are going there now, and you will summon the night gods.&nbsp; We will be there by noon tomorrow."
      T.p => T.raw "As they entered night god valley, there were beds raised on stilts, only a very few, maybe 20.&nbsp; As few of the tribe lived long enough to visit great night directly.&nbsp; Most died peacefully in their sleep, in battle, or by accident – Those were burned to send to them to the great night."
      T.p => T.raw "It had been 8 seasons since any other tribe member desired to visit the great night. &nbsp; It was a great boon and meant that the&nbsp; Old One was indeed in touch with the sprits."
      T.p => T.raw "Gourd-Shaker built a bed on raised stilts. He helped the Old One up to the platform."
      T.p => T.raw "&quot;here you must wait for the night gods to come and take you away with their sky horses.&nbsp; They will ride down on silver horses, and they will have one for you, you will go with them.&nbsp; Here is a rattle to shake to beg them to come.&nbsp; They will come when they are ready.&quot;"
      T.p =>
        T.raw "Gourd Shaker called to the spirits with yet another dance and taught the Old One the correct shake to summon the night gods -"
        T.em => T.raw "shake,shake,long shake, long shake"
        T.raw ".&nbsp; Only that sequence would summon the night gods.&nbsp; Gourd-Shaker told the&nbsp; Old One that he was only permitted to teach this special shake here in great night valley."
      T.p => T.raw "Gourd-Shaker rode off."
      T.p =>
        T.raw "The&nbsp; Old One waits until evening.&nbsp; He is not yet hungry,&nbsp; He shakes his rattle.&nbsp;"
        T.em => T.raw "&quot;Shake, shake, long shake, long shake"
        T.raw "&quot;"
      T.p => T.raw "The night gods take their time…"
      T.p =>
        T.em => T.raw "Shake, shake, long shake, long shake…"
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
page = new give_him_what_he_needs
console.log T.render page.html

# 
class from_the_st_johns_infirmary_the_bouncer extends stjohnsjimtemplate
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
      @post_from_the_st_johns_infirmary_the_bouncer()
  # 
  # section post_from_the_st_johns_infirmary_the_bouncer
  # 
  post_from_the_st_johns_infirmary_the_bouncer: =>
    T.div "#post-from-the-st-johns-infirmary-the-bouncer.article.article-type-post", id: "post-from-the-st-johns-infirmary-the-bouncer", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "From the St. John's Infirmary -- The Bouncer"
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
      T.p => T.raw "The house lights go down. The stage is a black backdrop where images of trees and streets are projected. We see Nobrow and Southwick talking at the St. John’s town square bus stop. It is early morning, but Lombard is busy."
      T.p => T.raw "Southwick sees his friend Nobrow waiting for the bus and walks up. They haven’t seen each other in weeks. They exchange pleasantries."
      T.p => T.raw "Nobrow: I gotta get that woman out of my life. She’s getting way out of hand. I thought she was going to go in one direction but she is getting worse, worse, worse. She bought $50 worth of heroin at ten last night, and she’s still out. She is totally out of control. She has a $100 a day heroin habit, drinks all the time, and smokes two packs of cigarettes a day."
      T.p => T.raw "Southwick: How many poisons can we put in our bodies? I see it all around in St. John’s. Is she going for some Olympic medal in drug tolerance?"
      T.p => T.raw "N: You can’t tell her nothing, she’s totally in denial. She won’t talk about any of it. (He leans down a bit and makes a gesture indicating a big bump on his inner thigh) She has a big welt on her leg where she put it in. There were big red blotches up and down her leg. It was so bad, it burned as she put it in. And then she put the other half in her other thigh and said it burns real bad. She stayed up hours with the itch. She kept saying “your place is filthy, the bugs are biting me.” I got no bugs. I said: “Well I’m lying here and the bugs aren’t biting me.”"
      T.p => T.raw "Nobrow’s phone rings. He answers. He glowers a bit. His German wrestler stance hardens."
      T.p => T.raw "Southwick walks a bit away."
      T.p => T.raw "“Yeah…”"
      T.p => T.raw "“I’m waiting for the bus. I gotta work…”"
      T.p => T.raw "“Why didn’t you walk with me?…”"
      T.p => T.raw "“Why didn’t you walk with me? You turned around and went the other direction.”"
      T.p => T.raw "“Where are you now?…”"
      T.p => T.raw "Everytime he pauses, a truck or bus passes by."
      T.p => T.raw "Throntle appears stage right sitting under a the sign of the infirmary. Throntle wears a purse in the shape of a lions head. The jaws pop open and closed for her. It hangs by front paws around her shoulder. She is talking on the phone, we cannot make out what she is saying. At the same time they both hang up. She makes another call, we cannot make out what she is saying."
      T.p => T.raw "As Nobrow hangs up, Southwick comes back and they continue:"
      T.p => T.raw "Nobrow points: There she is, under the arch. (He tries to change the subject, and not think of her. He keeps looking around in all directions: he wants to stare at her, but he wants to make it look accidental when he does watch her.) I gotta work today. I keep my girls safe: They dance and they tip me big. It will be slow, but I got a couple of big tippers. I work thursday and friday. I could have worked last night, but this way I get some time off. I work saturday, sunday, too. I just missed the bus, it was twenty-two minutes out. I been waiting some time. Here she is:"
      T.p => T.raw "Throntle finishes her call and walks up and sits on a potted tree next to N and S. She has a Starbucks drink from 7-11. I’ts capped, but half gone. She has a wet spot on her chest. She seems a bit drowsy."
      T.p => T.raw "N: you spilled something."
      T.p => T.raw "T: It’s coffee."
      T.p => T.raw "N: you have stuff all over you."
      T.p => T.raw "T: It’s coffee. It’s good. (She holds it out to him, he does not take it.)"
      T.p => T.raw "T: don’t you like it? Here, taste it. (she almost forces it on him — a difficult feat considering her sluggish demeanor)"
      T.p => T.raw "N: I know what it tastes like. I just don’t want any."
      T.p => T.raw "T: At least it’s not beer."
      T.p => T.raw "N takes an accusatory tone: Well, it will be."
      T.p => T.raw "T: That’s why nobody likes you, I can’t buy beer, I don’t have any money."
      T.p => T.raw "A well dressed elderly woman passes by. She is obviously old and “respectable”. She sits down on the sidewalk and has a bit of a spell. An ambulance drives up within seconds, and the attendants quickly disappear with her."
      T.p => T.raw "N: How much do you have?"
      T.p => T.raw "T: I have $5. I need $6."
      T.p => T.raw "N: You can buy two quarts for 5."
      T.p => T.raw "T: I’ll give you $3 for $5. (She stands and moves closer)"
      T.p => T.raw "N: I would too. (he pulls out his wallet, she gives him three dollars, he gives her a five dollar bill. )"
      T.p => T.raw "T: You know how I hate to beg."
      T.p => T.raw "S: You just have to figure out how to beg more efficiently."
      T.p => T.raw "T: Yes."
      T.p => T.raw "Throntle and Nobrow are close as they make the exchange, she gives him a hug."
      T.p => T.raw "T: I’m sorry you are angry."
      T.p => T.raw "N: I’m not angry, I’m irritated, there’s a difference."
      T.p => T.raw "T: Well, I was irritated all last night."
      T.p => T.raw "N: That’s what I’m irritated about."
      T.p => T.raw "T: I know."
      T.p => T.raw "That is as much of an apology that Throntle will ever give. She hugs him, and he responds. Their energy shifts to oxytocin closeness. They kiss goodbye sweetly and he gets on the bus and goes to work."
      T.p => T.raw "Southwick walks off."
      T.p => T.raw "Throntle walks over to the trash can and starts pawing through it."
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
page = new from_the_st_johns_infirmary_the_bouncer
console.log T.render page.html

# 
class they_leave_the_west_behind extends stjohnsjimtemplate
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
      @post_they_leave_the_west_behind()
  # 
  # section post_they_leave_the_west_behind
  # 
  post_they_leave_the_west_behind: =>
    T.div "#post-they-leave-the-west-behind.article.article-type-post", id: "post-they-leave-the-west-behind", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "They Leave the West Behind"
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
      T.p => T.raw "All the way the paper bag was on my knee. &mdash; Lennon &amp; McCartney"
      T.p => T.raw "I met Leo and Station early last month. I have been given the OK by both of them to tell their story here. It involves a computer chip I found in my bar of soap."
      T.p => T.raw "Georgia’s always on my mi mi mi mi mi mi mi mind. &mdash; Lennon &amp; McCartney"
      T.p => T.raw "Leo is an international expert in cyber security, and Station is his live-in estranged gay housekeeper. Station is from the Philippines and his name means &ldquo;stations of the cross&rdquo; or something like that, but in English his name sounded too much like &ldquo;crustaceon.&rdquo; He maintains the look of the whole neighborhood: it explains all the papasan chairs in the trees. I&rsquo;m not sure about the estranged part, but they never talk to each other."
      T.p => T.raw "Anyway, Station had been giving me tips on organic gardening: 1/3 perlite, 1/3 moxibustion, 1/3 chicken adobo &mdash; That kind of stuff. By the time he gets to the moxibustion, my eyes glaze over and I try to change the subject."
      T.p => T.raw "Me: &ldquo;Did I tell you I found a computer chip in my soap this morning? It&rsquo;s warm enough today for the pipes to unfreeze, so I took a shower, and in the last sliver of the bar, I found this tiny circuit.&rdquo;"
      T.p => T.raw "Station: &ldquo;You should get another brand of soap. Nicer to your skin than&nbsp;computer chips.&rdquo;"
      T.p => T.raw "Me: &ldquo;It’s free. &nbsp;I won a contest on the internet a couple of years ago: I get a lifetime supply of Georgia Soap.&rdquo;"
      T.p => T.raw "By the time I said internet, Station&rsquo;s eyes glazed over and he kind of wandered down the bluff and continued stringing english ivy in the tree-tops."
      T.p => T.raw "As I walked back to my digs, Leo came running out of their house toward me: &ldquo;I hear you use Georgia soap.&rdquo;"
      T.p => T.raw "Me: &ldquo;WTF? Yeah, How&rsquo;d you know? I found a chip in it this morning.&rdquo;"
      T.p => T.raw "Honey, disconnect the phone. &mdash; Lennon &amp; McCartney"
      T.p => T.raw "Leo is kind of a celebrity in St. John&rsquo;s: He always has a couple of bombshell ladies on his arm in public, but he never bring any of them back to his place. He speaks with a bit of a brogue, and is slightly pompous and hardly ever answers a question. He leaves for a few days every so often. Station will just sit outside the front door and wait till Leo gets back."
      T.p => T.raw "Leo: &ldquo;But is the soap any good? Or is it a pube magnet?&rdquo;"
      T.p => T.raw "Me: &ldquo;It&rsquo;s soap. Georgia Soap. Soap with a goddamn computer chip in it!&rdquo;"
      T.p => T.raw "Leo: &ldquo;Of course. Where you been? Oh, you didn&rsquo;t read the whole Puritan Act, did you?&rdquo;"
      T.p => T.raw "Been away so long I hardly knew the place..gee, it’s good to be back home&nbsp;&mdash; Lennon &amp; McCartney"
      T.p => T.raw "Me: &ldquo;Uh, no, uh, I was going to, but I never found time. Or needed to go to sleep that badly.&rdquo;"
      T.p => T.raw "Leo: &ldquo;Georgia bought out the entire technology from Bogostan when the Soviet Union broke up.&rdquo;"
      T.p => T.raw "you don’t know how lucky you are boys&nbsp;&mdash; Lennon &amp; McCartney"
      T.p => T.raw "Me: &ldquo;Soviet Union? Technology? They would use a Sledge Hammer to smash an atom. And there in no place called Bogostan. And what’s that got to do with the U. S. Puritan Act?&rdquo;"
      T.p => T.raw "Leo: &ldquo;Forget the Soviet Union, I&rsquo;m talking Bogostan. The Bogostani&rsquo;s had electronic surveillance tricks that we are still trying to figure out. It&rsquo;s a country that is so secretive, it erased it self completely from all historical record in 1992. It&rsquo;s mind boggling how they did that, but Georgia owns the technology now. That&rsquo;s why you can&rsquo;t remember. Even now, we are still not sure if Bogostan really exists. That&rsquo;s how good their technology is.&rdquo;"
      T.p =>
        T.raw "Me: &ldquo;What"
        T.a href: "http://www.google.com/search?rls=en&amp;q=smart+dust&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "technology"
        T.raw "?&rdquo;"
      T.p => T.raw "Leo: &ldquo;The GPS body scanner chips. In the soap, dummy. Don&rsquo;t you read the on-line user&rsquo;s manual for your soap? You had 30 days from first shower, you know. It&rsquo;s referenced in the U.S. Puritan Act under Appendix 23.A.21&mdash; &ldquo;mostly fair use.&rdquo;"
      T.p => T.raw "Me: &ldquo;GPS? What the hell for?&rdquo;"
      T.p => T.raw "Leo: &ldquo;GPS, you know - Georgia Personal Surveillance – The soap maps out every square inch of your body as you shower. Tussaud&rsquo;s had secretly leased the technology from Bogostan for their Wax Museum: That&rsquo;s why their wax statues are so realistic. Nowadays, the scans are used to generate advertisements tailored to your body contours. I bet you don&rsquo;t get any SPAM about breast enlargement, do you?&rdquo;"
      T.p => T.raw "Me: &ldquo;No, I get lots of ads for Peni&hellip;&rdquo; My voice trailed off as the truth hit me. They know. Everything. Every mole and freckle. And it&rsquo;s in the soap!"
      T.p => T.raw "Leo walked off down the bluff toward Station. He stopped halfway, awkwardly looked around like a cat trying to pretend he had other business and then ran back toward his car and left."
      T.p => T.raw "Station stood up, walked to the front door of their house and sat down outside. &nbsp;That was over a week ago, and he has been sitting, silently looking up the roadway ever since. Station hasn&rsquo;t done any work on the neighbor hood. The english ivy is still only half-way up the trees."
      T.p => T.raw "I didn&rsquo;t get to bed last night, and now&nbsp;Georgia’s always on my mi mi mi mi mi mi mi mind."
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
page = new they_leave_the_west_behind
console.log T.render page.html

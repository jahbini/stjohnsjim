# 
class big_rocks_burgers_and_birds extends stjohnsjimtemplate
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
      @post_big_rocks_burgers_and_birds()
  # 
  # section post_big_rocks_burgers_and_birds
  # 
  post_big_rocks_burgers_and_birds: =>
    T.div "#post-big-rocks-burgers-and-birds.article.article-type-post", id: "post-big-rocks-burgers-and-birds", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Big Rocks, Burgers and Birds"
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
      @from_the_famed_gutbuster_institute_of_the_st_john_rsquo_s_infirmary()
      @_mdash_nbsp_for_immediate_release()
      T.p => T.raw "Dr. Bernard Gutbuster announced success with retraining the emotional responses of hardened criminals. In a measure of prisonyard violence at the Big Rock Men’s Prison, the volunteers in his gut retraining regimen eliminated their rate of violent interaction with other inmates from 80 to 100 percent. In fact, the subjects that did were involved in breaking up a prison yard altercation, not instigation."
      T.p => T.raw "Dr. Gutbuster&rsquo;s technique involves intense sensory and dietary practices on an infants four hour interval to re-train the emotional responses of the subjects through the intestinal neural ganglia &mdash; the gut level response. Dr. Gutbuster has analyzed the 120 basic nutrition based emotional and functional responses that are learned through successful mother to baby interactions."
      T.p => T.raw "Dr. Gutbuster&rsquo;s early success were adapting cats to adapt the diet of the common squirrel. Somebody thought it was seriously wrong to have cats eat acorns and so Dr. Gutbuster adapted the squirrel to have the dietary needs of cats. Dr. Gutbuster went on record as saying &ldquo;While there have been examples of birds killed by meat eating squirrels, this killer squirrel thing is blown way out of proportion.&rdquo;"
      T.p => T.raw "Dr. Gutbuster&rsquo;s researches have been funded by the Big Rock Candy Burger Foundation, and so far, the only side effect is a strong preference shown by the volunteers for Big Rock Burgers."
      T.p => T.raw "– While Dr. Gutbuster may come up with an artificial infancy, don&rsquo;t even think we can do better than what mommies do naturally. We hope."
      T.p =>
        T.raw "We notice things that we don&rsquo;t pay attention to. &nbsp;I know that doesn’t seem to make sense,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", but bear with me. &nbsp;It’s the small things. A dog barking in a lot when I walk by. Hmm. I been walking this route for months and no dog. Now there are two, and as grouchy as Tommy with a hooker who wants extra money to say &quot;"
        T.em => T.raw "Oh, Tommy you are the biggest"
        T.raw ".&quot;"
      T.p => T.raw "Are these dogs with stay over guests for Christmas? Ya’ Think?"
      T.p =>
        T.raw "It’s that way at christmas, but also all year long. &nbsp;Little things to expect. &nbsp;And when they happen, you notice them and then,"
        T.em => T.raw "just as quickly,"
        T.strong => T.raw "not"
        T.raw "pay attention to it. Guests will be gone after Christmas, life will return to normal: God&rsquo;s back in his heaven and dog&rsquo;s back in his yard. And that makes for a good reason to ignore it. &nbsp;Don’t sweat the small stuff."
      T.p => T.raw "When you live in an area for a while you stop noticing. &nbsp;When you move from HNL, you start noticing. &nbsp;For me, St. John’s Jim, Portland is a newborn baby experience of only a year old. The PNW Native in me wakes up and pays attention when something happens here that is odd or different from Honolulu."
      T.p => T.raw "The Kama&rsquo;aina in me wakes up and pays attention when things do NOT happen."
      T.p => T.raw "No L and L drive in (they are not really drive inns are they?) &nbsp;– We got the James John Cafe."
      T.p => T.raw "No ABC stores. – Thank goodness, except at 2AM when I need a pineapple ashtray and a lighter with a hula dancer on it. &nbsp;Sometime that happens."
      T.p => T.raw "No palm trees. – ouch, but we got great evergreens."
      T.p => T.raw "No roaring winds at the Pali. We got the Bridge. &nbsp;It roars day and night. &nbsp;And it’s as beautiful to look at as well."
      T.p => T.raw "No Merrie Monarch Festival. – Poop."
      T.p => T.raw "No slack key guitar – We used to have John Fahey. &nbsp;Does that count?"
      T.p =>
        T.raw "No tutus doing Tai Chi at 6AM in"
        T.a href: "http://www.yelp.com/biz/ala-moana-beach-park-honolulu", => T.raw "Ala Moana Park"
        T.raw ". – Sigh."
      T.p =>
        T.raw "No"
        T.a href: "http://www.hawaiiforvisitors.com/recipes/huli-huli-chicken.htm", => T.raw "huli-huli"
        T.raw "chicken. &nbsp;– Huh?!?!"
      T.p => T.raw "What?! No open cart barbecued chicken to raise funds to fly the baseball team to the championship? That&rsquo;s serious. All the other stuff makes sense, but no more seeing racks of uniformly nude bird-soldiers tumbling in formation?! No more smelling the pavlovian aroma of seasoned drippings flashing into vapor on the coals below?"
      T.p => T.raw "The truck is usually parked in a Safeway parking lot. Safeway knows it draws customers. You can walk by the tent and truck, but you WILL stop and smell. Like popcorn at a theatre, your mouth will fill with saliva and you can make the choice to keep walking or to buy a half a bird and eat it while it is still hot. Greedily."
      T.p => T.raw "Or you can keep walking and ignore the siren call of a Military Bird Barbecue. The Big Rock Candy Burger company should have it so good.&nbsp;"
  # 
  # section _mdash_nbsp_for_immediate_release
  # 
  _mdash_nbsp_for_immediate_release: =>
    T.h4 "#-mdash-nbsp-for-immediate-release", id: "-mdash-nbsp-for-immediate-release", => T.raw "&mdash;&nbsp;For immediate release"
  # 
  # section from_the_famed_gutbuster_institute_of_the_st_john_rsquo_s_infirmary
  # 
  from_the_famed_gutbuster_institute_of_the_st_john_rsquo_s_infirmary: =>
    T.h3 "#from-the-famed-gutbuster-institute-of-the-st-john-rsquo-s-infirmary", id: "from-the-famed-gutbuster-institute-of-the-st-john-rsquo-s-infirmary", => T.raw "From the Famed GutBuster Institute of The St. John&rsquo;s Infirmary"
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
page = new big_rocks_burgers_and_birds
console.log T.render page.html

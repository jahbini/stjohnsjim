# 
class wrestling_with_memes_again extends stjohnsjimtemplate
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
      @post_wrestling_with_memes_again()
  # 
  # section post_wrestling_with_memes_again
  # 
  post_wrestling_with_memes_again: =>
    T.div "#post-wrestling-with-memes-again.article.article-type-post", id: "post-wrestling-with-memes-again", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Wrestling with Memes Again"
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
      T.p => T.raw "The local Aikido fountainhead at L’ecole de Budo send me an email inviting me to an intense exercise weekend of swimming upstream with salmon. &nbsp;Make sure your wear your bear repellent."
      T.p => T.raw "I replied that he may want to get his thyroid checked. And wish him a very happy birthday celebration. And, of course, is it really salmon run season?"
      T.p =>
        T.raw "Tommy from Gunas Lp. is in training as a Pro Wrestler: he signed a long term contract with Gorgeous George, Inc. (A wholly fictional subsidy not associated with the real&nbsp;"
        T.a href: "http://www.wrestlingmuseum.com/pages/bios/halloffame/georgebio.html", => T.raw "GG"
        T.raw ") to supply him with training, opponents and outrageous costumes.&nbsp; In return he is to kick-back 50% of his proceeds for the next ten years."
      T.p => T.raw "Gina, the sales rep drove Tommy back from the paper shuffle. &nbsp; Gina started singing: &ldquo;Parking spot, Parking spot, there will be a Parking spot.&nbsp; Round the corner there&rsquo;s a parking spot&rdquo; &mdash; And, sure enough, there was a parking spot on Portland&rsquo;s rush hour Lombard.&nbsp; Impossible &mdash; She continues: &ldquo;I can go all down MLK blvd and never hit a light when I sing the right song.&rdquo;"
      T.p =>
        T.raw "Tommy, with his usual classy style, says: &ldquo;I like it when you talk like Southwick.&nbsp; Wanna Fuck?&rdquo; &nbsp; (Author&rsquo;s note: Tommy&nbsp;"
        T.em => T.raw "really"
        T.raw "&nbsp;does talk like that, I&rsquo;m not going to dumb it down, sorry.)"
      T.p => T.raw "Gina very cordially replies: &ldquo;Tommy, you are a client, and I never fish off the company pier&rdquo; &mdash; Tommy, only at that instant, realizes that he didn&rsquo;t want this lady, she probably had some serious defect, like an intense hatred of Pro Wrestlers.&nbsp; Tommy decided to pump concrete into her tires."
      T.p => T.raw "As Gina drove off, she mentioned ,&ldquo;Hey, I know all about concrete in the tires, try it, estupido, and your career is all over.&rdquo;&nbsp; Tommy loves epiphanies."
      T.p =>
        T.raw "He marvels about how the parking spot appeared, how she knew about the tire thing, and how she had him by the balls professionally. &nbsp; But mostly he marvels about how the&nbsp;"
        T.em => T.raw "parking spot appeared.&nbsp;"
      T.p => T.raw "When asked, Southwick said: &ldquo;I promised my professor at ol&rsquo; Newage Sewage State University to keep secret the secret from people who would tell the secret.&nbsp; But even if I tell you the secret, You won&rsquo;t know the secret, cause you can&rsquo;t understand the secret!&rdquo;"
      T.p => T.raw "Southwick continued: &ldquo;Some people believe there is magic in words.&nbsp; It seems to work to organize their thinking and that makes them prone to getting things they want.&nbsp; Not so mysterious when you think about it.&rdquo;&nbsp;"
      T.p => T.raw "Whether by hook, or by crook, it seems to work in practice.&nbsp; Make a word, make an affirmation, make a story, make it a meme and it will prevail &mdash; just listen to this:&nbsp;"
      T.hr()
      T.p => T.raw "in the beginning was the word, and the word was good."
      T.p => T.raw "Visual – Slow fade from black. &nbsp;Very out of focus – slow movement, maybe through a structure, but very out of focus and dark."
      T.p => T.raw "No words, no story. &nbsp;&nbsp;No story, no Bible. &nbsp;Story preceedes Bible, and words preceed Story, and even before that, chants without words preceeded words."
      T.p => T.raw "Each danger had a chant. &nbsp;Each joy had it’s chant. &nbsp;The first chants were one syllable, and named the most important dangers and joys of the people."
      T.p => T.raw "The chants became longer as they described every thing: Dangers and places, Joys and actions. &nbsp;Joys are always active. &nbsp;Kiss, love, breathe, swallow. &nbsp;Dangers are dark places. &nbsp;Far, Night, Fright, cave. &nbsp;Qualities came next: good, bad, dark, stink. and God and the lesser gods too."
      T.p => T.raw "It was good. &nbsp;It made even an ordinary one, an ancient one, be able to hold the attention of the people. &nbsp;All you had to do was learn the chant. &nbsp;And then there were chants, and soon there were many chants. &nbsp;"
      T.p => T.raw "Announcer is now the Old Man - and we have a close up of his face. &nbsp;(Visual – this is the first recognizable thing in view. &nbsp;Rembrandt lighting - could be polynesian, could be aboriginal, impossible to tell)"
      T.p => T.raw "And each chant was the right chant. &nbsp;&nbsp;And the older of us teach the younger of us all the chants of all the places and things that we know and you must learn."
      T.p => T.raw "So listen to me now, as I tell you the chant of this &quot;Secret Grove:&quot; Some places have chants that are secret and special to them. &nbsp;And only to be revealed to that place: Because that place is also a lesser god, and that chant is for that god alone: no other god may hear it lest it start a god-war: &nbsp;where mountains turn into liquid and the earth shakes. &nbsp;&nbsp;But now that we are here in this grove, this secret grove, I may tell you the name."
      T.p => T.raw "But you must promise, promise never, ever to tell, lest they finish the cutting they started at your man-initiation, that you will never reveal to any but a full fledged man of our tribe these names and chants:"
      T.p => T.raw "So pledge now, or leave this place forever. ( web style presentation: (click here to proceed) – ) Good now I can tell you (Visual: lighting comes up soft but bright – a Spring day)"
      T.p =>
        T.raw "The name of this Secret Grove is &quot;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "Stadium&quot; and if you chant this over and over, our team will win! &nbsp;&nbsp;&quot;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "– EEEEYYYOOOOO –"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "– ooooowwwweeeeee!&quot; (finishes shouting with the crowd)"
      T.p => T.raw "Southwick says there is magic in chants and cheers. &nbsp;If teams can have their own chant and cheers, why not You?"
      T.p => T.raw "Tommy has decided against a career in Pro Wrestling. &nbsp;Gina might just want to wrestle with his memes a bit – he is no longer the &quot;company pier&quot;.&nbsp;"
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
page = new wrestling_with_memes_again
console.log T.render page.html

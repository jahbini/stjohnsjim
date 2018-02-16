# 
class and_the_pursuit_of_happiness extends stjohnsjimtemplate
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
      @post_and_the_pursuit_of_happiness()
  # 
  # section post_and_the_pursuit_of_happiness
  # 
  post_and_the_pursuit_of_happiness: =>
    T.div "#post-and-the-pursuit-of-happiness.article.article-type-post", id: "post-and-the-pursuit-of-happiness", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "And the Pursuit of Happiness"
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
        T.raw ", my closest friends have lamented that I&rsquo;m not telling MY story.&nbsp; What&rsquo;s happening in Jim&rsquo;s life?&nbsp; While the details are incredibly boring, Not Safe For Work (NSFW), and would simply be indiscrete to mention here, I can give you a pretty accurate view of &ldquo;whassup!?&rdquo; &nbsp;So while"
        T.em => T.raw "The St. John’s Lighthouse"
        T.raw "is me telling the story of St. John’s, I thought I’d mention what St. John’s most famous citizen (me) is up to."
      T.p => T.raw "I&rsquo;m sitting in the James John Cafe,&nbsp; Suzanne delivers my exquisite entree and says &ldquo;Sorry for the wait.&rdquo;"
      T.p => T.raw "Southwick falls from the ceiling, dusts himself off and misquotes Yoda sideways: &ldquo;No, there is no wait.&nbsp; Only enjoy.&nbsp; Enjoy or Enjoy NOT.&rdquo; &mdash; That&rsquo;s one&rsquo;s an easy choice at the James John Cafe."
      T.p =>
        T.raw "I&rsquo;m enjoying the beets and horseradish.&nbsp; I have just finished rereading Tom Robbins&rsquo; Jitterbug Perfume and seemingly,"
        T.a href: "http://twitter.com/StJohnsJim/status/3872848519110656", => T.raw "beets"
        T.raw "are everywhere.&nbsp; But what else do I do with my time?"
      T.p =>
        T.raw "I spend much of my time distilling reality.&nbsp; I do that with reflection, introspection, observation, and writing. Why? How?&nbsp; Hmmm.&nbsp; It&rsquo;s that"
        T.em => T.raw "Life, Liberty and the Pursuit of Happiness"
        T.raw "thing."
      T.p =>
        T.em => T.raw "LIfe, liberty, and the pursuit of happiness."
        T.raw "&nbsp; Nice.&nbsp; not much overlap among these concepts.&nbsp; That&rsquo;s intelligent.&nbsp; It shows an underlying passion for clarity and completeness in the service of enlightenment.&nbsp; That&rsquo;s why we love Ben Franklin and Thomas Jefferson."
      T.p =>
        T.raw "But let&rsquo;s not forget"
        T.em =>
          T.a href: "http://www.rallytorestoresanity.com/", => T.raw "Domestic Tranquillity"
        T.raw "."
      T.p =>
        T.raw "Mighty nice, Mr."
        T.a href: "http://www.google.com/search?rls=en&amp;q=rupert+murdoch+australia&amp;ie=UTF-8&amp;oe=UTF-8", => T.raw "Furriner"
        T.raw "from Australia, &nbsp;sewing such seeds of domestic discord as your Fox Gnus does.&nbsp; Maybe you could learn from another"
        T.a href: "http://gov.ca.gov/about/arnold", => T.raw "Furriner"
        T.raw ", &nbsp;who seems to ooze domestic tranquility, if not total prosperity for the state of California."
      T.p => T.raw "Mr. Mega-corpo-politician, is it simply more profitable to sew and harvest discord than sanity? &nbsp;That’s just sad."
      T.p =>
        T.raw "And, by the way, when you are being"
        T.a href: "http://romancecapitol.com", => T.raw "domestic"
        T.raw ", be also"
        T.a href: "http://en.wikipedia.org/wiki/Love_the_One_You&#39;re_With", => T.raw "tranquil"
        T.raw ".&nbsp; OK,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "?"
      T.p =>
        T.em => T.raw "Life"
        T.raw ":&nbsp; That has to do with protection, health, safety, food supply."
      T.p => T.raw "Speaking of Food Supply, protection and such: Southwick says Tommy put workman&rsquo;s overalls on 6 foot amoeba.&nbsp; Tried to get the thing served at the Food Carts.&nbsp; Tommy has evidently been using the Storage Center as a safe-house for amoeba&rsquo;s."
      T.p =>
        T.em => T.raw "Liberty"
        T.raw ":&nbsp; That has to do with"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "-created choices and the ability to follow through with those choices."
      T.p => T.raw "Bambi Brew over at the City Council affirms that the businesses do have the liberty to refuse service to these ungodly amoebas.&nbsp; &ldquo;St. John&rsquo;s is amoeba free!&rdquo;"
      T.p =>
        T.em => T.raw "Pursuit of Happiness"
        T.raw ":&nbsp;"
        T.em => T.raw "Pursuit"
        T.raw "&mdash; an ongoing goal directed action.&nbsp;"
        T.em => T.raw "Happiness"
        T.raw ".&nbsp; Specifically, deliberately, understandably vague.&nbsp; Who knows what the heck it is?&nbsp; We all know what may make ourselves happy, or at least we think we do.&nbsp; But we can only guess at what might make someone else happy. &nbsp;"
        T.em => T.raw "Who knows what is your Happiness"
        T.raw "? &nbsp;I’ve got the answer right here: Lemme look this up… Oh, here it is it’s, umm, &nbsp;&quot;"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw "&quot;. &nbsp;I’m sure you’ve met."
      T.p =>
        T.raw "Tommy is also"
        T.em => T.raw "Pursuing Happiness"
        T.raw "with the ladies who run the &ldquo;Kiss and Tell&rdquo; concessions at the Hope for Health bar and vomitorium.&nbsp; He seems to equate the one-night-stand with heaven and anything longer as hell."
      T.p => T.raw "The choice of happiness cannot be made by the Government.&nbsp; The gov can do all it can to assure a playing field where Life, Liberty, and the Pursuit of Happiness are possible.&nbsp; Whether it actually does it&rsquo;s part is certainly debatable."
      T.p => T.raw "The point is that the gov can neither choose, nor pursue happiness for you."
      T.p =>
        T.raw "But"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", you might be asking: &ldquo;How is this about St. John&rsquo;s Jim&rsquo;s life?&rdquo; &mdash; Well, here it is:"
      T.p => T.raw "I&rsquo;ll define happiness myself, thank you.&nbsp; At this time in my life, it has to do with channeling whatever wisdom I may possess and putting that wisdom out into the universe and seeing what sticks.&nbsp; Along with as many jokes as I can think of.&nbsp; I can&rsquo;t rely on the rut any more, so I&rsquo;m furiously finding if I have a groove."
      T.p =>
        T.raw "I&rsquo;m enjoying Life, Liberty and the Pursuit of Happiness.&nbsp; As much as possible.&nbsp; And I&rsquo;ll do that as long as I&rsquo;m able: They haven&rsquo;t ground me down yet.&nbsp; I&rsquo;ll survive and thrive, like Jitterbug Perfume&rsquo;s King Alobar, I&rsquo;ll be an undigestible"
        T.a href: "http://twitter.com/StJohnsJim/status/3872848519110656", => T.raw "beet"
        T.raw "in our society&rsquo;s alimentary canal."
      T.p => T.raw "How about you?&nbsp;"
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
page = new and_the_pursuit_of_happiness
console.log T.render page.html

# 
class valkyrie_sms extends stjohnsjimtemplate
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
      @post_valkyrie_sms()
  # 
  # section post_valkyrie_sms
  # 
  post_valkyrie_sms: =>
    T.div "#post-valkyrie-sms.article.article-type-post", id: "post-valkyrie-sms", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Valkyrie On-Line"
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
      T.p => T.raw "Per a reader’s request for a story for diary entries about a Valkyrie. &nbsp;I changed the &quot;diary&quot; idea into using on-line messaging instead; more of a challenge."
      T.p =>
        T.raw "I got some background at this site –"
        T.a href: "http://lokis-dottir.livejournal.com/68127.html", => T.raw "http://lokis-dottir.livejournal.com/68127.html"
      T.p =>
        T.raw "Our heroine is Aubrun, a low-ranking wage slave in some corporate hierarchy of the afterlife.  Her mid-level overlord, Skuld, feels she needs to keep these"
        T.a href: "http://www.theoi.com/Daimon/Keres.html", => T.raw "death goddesses"
        T.raw """
on a tight leash:  “
"""
        T.em => T.raw "Cravers of blood, All of ‘em"
        T.raw "“"
      T.p => T.raw "The following is intended to be a real-time corporate messaging between two myth-twits (mythical tweeters) – hey, who says spiritual beings cant be on the internet."
      T.ol =>
        T.li =>
          T.p =>
            T.raw "Aubrun - Valkyrie &nbsp;– Addresses her messages to @Skuld"
            T.div ".clearfix.mb2.border-bottom.fit.fancybox.p2", class: "clearfix mb2 border-bottom fit fancybox p2", =>
              T.comment "href=@pathToMe/harpi.png title=Harpie Junior Grade Aubrun Reports, Sir! text=aubrun@fancybox.p2"
              T.a ".block.mx-auto", class: "block mx-auto", href: "story/valkyrie-sms/harpi.png", title: "Harpie Junior Grade Aubrun Reports, Sir!", =>
                T.img ".fig-img", class: "fig-img", src: "story/valkyrie-sms/harpi-t.png", alt: "aubrun"
              T.p ".caption", class: "caption", => T.raw "Harpie Junior Grade Aubrun Reports, Sir!"
        T.li =>
          T.p =>
            T.raw "Skuld - Senior Valkyrie – Take no lip, give no tit"
            T.div ".clearfix.mb2.border-bottom.fit.fancybox.p2", class: "clearfix mb2 border-bottom fit fancybox p2", =>
              T.comment "href=@pathToMe/harpie-aveugle.jpg title=I am ready for my close-up, Mr. DeMille text=skuld@fancybox.p2"
              T.a ".block.mx-auto", class: "block mx-auto", href: "story/valkyrie-sms/harpie-aveugle.jpg", title: "I am ready for my close-up, Mr. DeMille", =>
                T.img ".fig-img", class: "fig-img", src: "story/valkyrie-sms/harpie-aveugle-t.jpg", alt: "skuld"
              T.p ".caption", class: "caption", => T.raw "I am ready for my close-up, Mr. DeMille"
        T.li =>
          T.p =>
            T.a href: "http://en.wikipedia.org/wiki/Sessr&uacute;mnir", => T.raw "Sessrumnir"
            T.raw ":&nbsp;– Valhalla’s waiting station, A giant hall of limbo with wooden benches for the dead."
      T.hr()
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "@Aubrun assignment: 11/23/09 08:30 UTC You have been re-assigned to Darfur sector 3B. report immediately"
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld K"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun upon arrival you will choose souls from only the dead, not like in your last assignment."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld but he was in a coma! &nbsp;That&rsquo;s as good as dead!"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun no, we went all over that during the inquiry. &nbsp;I don&rsquo;t know why Odin stepped in and gave you another chance, but wise up."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld OK, I&rsquo;ve learned my lesson. &nbsp;I&rsquo;m not to CHOOSE any but really dead souls from the battles."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun That&rsquo;s right, returns are 2 expensive in temporal and spiritual corrections that must be made."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun Begin your reports from Darfur sector 3B immediately."
      T.p => T.raw "Sessrumnir makes automatic reports on arrivals and departures."
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", class: "flex justify-start border rounded ml2 mt3 col-11", =>
        T.div ".h2.p1.fuchsia", class: "h2 p1 fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", class: "self-center h3", => T.raw "&nbsp;@Skuld 11/23/09 08:45 UTC 1EA soul labeled 35273 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", class: "flex justify-start border rounded ml2 mt3 col-11", =>
        T.div ".h2.p1.fuchsia", class: "h2 p1 fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", class: "self-center h3", => T.raw "&nbsp;@Skuld 11/23/09 08:51 UTC 1EA soul labeled 35985 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", class: "flex justify-start border rounded ml2 mt3 col-11", =>
        T.div ".h2.p1.fuchsia", class: "h2 p1 fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", class: "self-center h3", => T.raw "&nbsp;@Skuld 11/23/09 08:52 UTC 1EA soul labeled 37226 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;Sessrumnir numbers are going up fast! from 35273 to 37226 in 7 minutes! Too many dead today!&nbsp;"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun You know, I read that too, and you get paid. Just be happy you are still working"
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld K, but it&rsquo;s lots of work and long hours down here as a Valkyrie."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun You get maximum pay for your job specification. &nbsp;If you need, go to HR."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld No, I&rsquo;m not going to HR again: all smiles and coo-ing. &nbsp;Liars all."
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", class: "flex justify-start border rounded ml2 mt3 col-11", =>
        T.div ".h2.p1.fuchsia", class: "h2 p1 fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", class: "self-center h3", => T.raw "&nbsp;@Skuld 11/23/09 09:11 UTC 1EA soul labeled 38177 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld I’m at Sessrumnir processing says they have 4 souls destined for Valhalla, and want me to take them"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun Nix on the escort to Vahallah, you don&rsquo;t have seniority, and you are only qualified for 2 souls transport."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld &nbsp;Sorry, I already took all 4. &nbsp;I&rsquo;m in transit to Valhalla, I&rsquo;ll check in there."
      T.p => T.raw "later."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun Valhalla reports that you did not arrive as scheduled. &nbsp;U there?"
      T.p => T.raw "Much later."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun U there? &nbsp;REPORT!"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun &nbsp;Where are you? &nbsp;What have you done with those souls??"
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun Odin won&rsquo;t save you this time, you better check in NOW."
      T.p => T.raw "A bit later…"
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld Um. &nbsp;K. I&rsquo;m having a little trouble. &nbsp;Still en-route."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp; @Aubrun &nbsp;Don&rsquo;t tell me you dropped a soul again! &nbsp;And this one was for Valhalla? &nbsp;Odin will be pissed."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld &nbsp;No sweat, just tell him that Loki tripped me up again."
      T.div ".flex.justify-start.border.rounded.ml2.mt2.col-8", class: "flex justify-start border rounded ml2 mt2 col-8", =>
        T.div ".h4.p1.purple", class: "h4 p1 purple", =>
          T.raw "Skuld --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpie-aveugle-t.jpg"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Aubrun LOL! &nbsp;I used that excuse myself when I was still doing soul-transport. Always Works."
      T.div ".flex.justify-start.border.rounded.ml4.mt1.col-7", class: "flex justify-start border rounded ml4 mt1 col-7", =>
        T.div ".h4.p1.grey", class: "h4 p1 grey", =>
          T.raw "Aubrun --"
          T.img ".circle.fig-img", class: "circle fig-img", width: "64", height: "64", src: "story/valkyrie-sms/harpi-t.png"
        T.div ".self-center.h4", class: "self-center h4", => T.raw "&nbsp;@Skuld yes Loki ALWAYS admits to everything just to piss ODIN off! :-)"
      T.hr()
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
page = new valkyrie_sms
console.log T.render page.html

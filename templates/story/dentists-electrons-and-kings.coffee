# 
class dentists_electrons_and_kings extends stjohnsjimtemplate
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
      @post_dentists_electrons_and_kings()
  # 
  # section post_dentists_electrons_and_kings
  # 
  post_dentists_electrons_and_kings: =>
    T.div "#post-dentists-electrons-and-kings.article.article-type-post", id: "post-dentists-electrons-and-kings", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Dentists, Electrons and Kings"
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
        T.raw "Hi,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ",&nbsp;I had asked Southwick to send out yesterday’s story, I hope it got through to you: it had the wrong return address.&nbsp; Xin Loi Bah.&nbsp; I had to go across town to the Dental School:&nbsp; I get to help a student learn his craft.&nbsp; My tooth might get a diamond inlay.&nbsp; More likely my tooth gets a root canal."
      T.p =>
        T.a href: "http://answers.yahoo.com/question/index?qid=20080404202107AAVc8mi", => T.raw "Dentists"
        T.raw "have the goal of giving you a functional set of teeth –"
        T.a href: "http://www.ada.org/policiespositions.aspx", => T.raw "Dentation"
        T.raw ".&nbsp; They have a maximum standard: Can the patient chew?&nbsp; End of treatment.&nbsp; Done deal.&nbsp; Anything extra is way outside of standard treatment: including cyanide or diamond inlays for spies and gangstas. &nbsp;"
        T.a href: "http://www.replicaing.com/teeth-inlaid-diamond-you-have-enough-fashion", => T.raw "Cosmetic dentistry"
        T.raw ", not basic research, is where the money is."
      T.p => T.raw "&nbsp;"
      T.p => T.raw "But that essentially means that the Dental Profession is stuck.&nbsp; They do not have to improve.&nbsp; They get their job done.&nbsp; And that’s the Portland attitude: Git ‘er done.&nbsp; A dentist will learn to glad hand the patient, drill ‘em, fill ‘em, and bill ‘em to give ‘em the thrill’em.&nbsp; That is the craft, and a Dentist from 1920 would have no difficulty in the modern dentists office.&nbsp; I have asked dentists repeatedly about that fact, and they agree, that in large measure, the field is stagnant.&nbsp; Dental research may exist, but… &nbsp; why?"
      T.p => T.raw "&nbsp;"
      T.p =>
        T.raw "The appointment took three hours, and my tooth is awaiting final judgement on root-canal or crown or diamond inlay.&nbsp;&nbsp;The good news is that I can have salad dressing without having crazy twitches for hours afterward. &nbsp;The aerial tram ride back was fabulous with Mount Hood in the distance, but the trains ran late, and I missed my usual appointment to gather stories at the"
        T.a href: "http://www.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;msa=0&amp;msid=114144299215869109392.00049235069b2ceba6d18&amp;ll=45.593201,-122.755716&amp;spn=0.007162,0.014205&amp;t=h&amp;z=16", => T.raw "Open Range Street Person Preserve"
        T.raw "in St John’s."
      T.p =>
        T.raw "So,"
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I stopped by 3 Gunas Lp to share a beer with Southwick and Tommy: Roger was still out at his lady’s house on the coast. &nbsp;"
      T.p => T.raw "Southwick mentions physics, Tommy says he knows all about it:&nbsp;"
      T.p => T.raw "&quot;It’s hydrogen. Think of the electron as the woman who plays hard to get.&nbsp; The man in the center is stuck.&nbsp; That’s hydrogen, Southwick!&nbsp; That’s Hydrogen.&nbsp; You know hydrogen! &nbsp; Well, that’s how it works!&nbsp;"
      T.p => T.raw "Tommy’s voice explodes each phrase as if the force of his words makes it a matter of personal experience."
      T.p => T.raw "&quot;And when you got two or more protons you need newtrons. &nbsp;You need some easy women in there or else they are faggots.&nbsp; Just think of the orgy that Uranium has got going in the new Klus thing. &nbsp;And I got the hot tub in the center.&quot;"
      T.p =>
        T.raw "Southwick barely registers shock, and shoots back: &quot;That’s nucleus, Tommy, but even though you are a card carrying member of the &quot;Church of Who Gives a Fuck,&quot; (which lets you use the word ‘faggot’ to mean something else than a bundle of sticks.) pointing out women to be ‘easy’ or ‘hard to get’ makes a good analogy for nuclear physics is stretching a bit don’t you think? &nbsp;The women you know are the women"
        T.em =>
          T.strong => T.raw "you"
        T.raw "consider whores. &nbsp; To me, they are something quite else, and I don’t get any sexual images from the nucleus:&nbsp; Or I didn’t up to"
        T.em => T.raw "now"
        T.raw ", thank you very much!&quot;"
      T.p => T.raw "But Tommy wasn’t paying much attention, he had gone back to tearing the wings off of old Ferrari’s.&nbsp;"
      T.p => T.raw "(close scene, queue Al)"
      T.p => T.raw "Hi, This is Al.&nbsp; Southwick, ha, he walked right into that one.&nbsp; He’s going to be looking for electrons now!"
      T.p => T.raw "&nbsp;"
      T.p =>
        T.span ".FBname", class: "FBname", => T.raw "Friend"
        T.raw ", I work at the docks.&nbsp; I read St John’s Jims emails every day.&nbsp; Just to proove that you don’t need to be no literaty types to have a laff at Southwick.&nbsp; Tommy tells me where to laugh, sometimes. &nbsp; He’s usually wrong, but we laugh where he says anyways.&nbsp; So tell your friends to subscribe.&nbsp; Ya don’t want your sewer to back up, do ya?"
      T.p => T.raw "(queue Jim)"
      T.p => T.raw "Jim here again: Thanks, Al for your uninformed endorsement, I’m sure the readers will appreciate it."
      T.p => T.raw "Bye for today, I’ll leave you with this thought from The Tarot of the Celarien:"
      T.p => T.raw "The King of Swords might advise: &quot;To be King, know your true adversary.&quot;"
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
page = new dentists_electrons_and_kings
console.log T.render page.html

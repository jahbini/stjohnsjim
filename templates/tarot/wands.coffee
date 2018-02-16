# 
class wands extends stjohnsjimtemplate
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
      @post_wands()
  # 
  # section post_wands
  # 
  post_wands: =>
    T.div "#post-wands.article.article-type-post", id: "post-wands", class: "article article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", class: "article-inner pb2", =>
        T.div ".article-header", class: "article-header", =>
          T.h1 ".article-title", class: "article-title", itemprop: "name", => T.raw "Wands"
          @bloviation()
        T.div ".article-footer.hide", class: "article-footer hide", =>
          T.a ".article-share-link", class: "article-share-link", "data-url": "http://localhost:3030/stjohnsjim/tarot/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", class: "article-tag-list", =>
            T.li ".article-tag-list-item", class: "article-tag-list-item", =>
              T.a ".article-tag-list-link", class: "article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", id: "bloviation", class: "article-entry contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "Wands – The Necessity of Invention."
      T.p =>
        T.strong =>
          T.em => T.raw "True Creation, events expected and unexpected!"
        T.raw "The wands represent the fruits of creative energy: Action and Reaction. Ideas are opposite of territory, the requirement of the swords, or security, the requirement of the pentacles. A naked idea is defenseless, it is iconoclastic and resisted by the pentacles, who are more centered around secure, physical possession. If cups be life and sensibility itself, the Wands are the life of mind."
      T.blockquote =>
        T.p => T.raw "I do not think there is any thrill that can go through the human heart like that felt by the inventor as he sees some creation of the brain unfolding to success… Such emotions make a man forget food, sleep, friends, love, everything. – Nicola Tesla, 1886"
      T.p => T.raw "The essence of creative wand energy is Nicola Tesla. An inventor is the artist that paints on the canvas of culture with the brush of technology. As such he ranks with Beethoven, Bach, Da Vinci, Christ and Lao Tzu. All these greats used humanity’s most indelible ink."
      T.p => T.raw "The events of Tesla’s life map well onto the messages of hope, opportunity, success, failure and strife illustrated by each card. Especially notable is the common end for the creative soul — the burden of hundreds of unharnessed ideas that weigh Nicola and bring him to enduring poverty and obscurity. He becomes the ideal of the mad scientist simply because we can not look deep enough into his soul for all the wands he flashes."
      T.p => T.raw "The Suit of Wands is the only suit with an unequivocal ten that signals the difficult end of the bearer of Wands."
      T.blockquote =>
        T.p => T.raw "It is not a dream, it is a simple feat of scientific electrical engineering, only expensive — blind, faint-hearted, doubting world! … Humanity is not yet sufficiently advanced to be willingly led by the discoverer’s keen searching sense. But who knows? Perhaps it is better in this present world of ours that a revolutionary idea or invention instead of being helped and patted, be hampered and ill-treated in its adolescence — by want of means, by selfish interest, pedantry, stupidity and ignorance; that it be attacked and stifled; that it pass through bitter trials and tribulations, through the strife of commercial existence. So do we get our light. So all that was great in the past was ridiculed, condemned, combatted, suppressed — only to emerge all the more powerfully, all the more triumphantly from the struggle.” — Nikola Tesla upon the plight of the Wardenclyffe project."
      T.p => T.raw "Wands also imply newness and change, and yes, unpredictability. Unpredictability creates suspicion and avoidance."
      @ace_of_wands()
      T.p => T.raw "\paragraph{The breakthrough} of rotating magnetic fields! Very few examples of the great inventions of civilization can be traced to one person. The final key to electric power for the world can be traced to the work of Nicola Tesla. This is his description of the idea of rotating magnetic fields – the key to converting electric energy into motion."
      T.p => T.raw "\begin{quotation}"
      T.p => T.raw "One afternoon, which is ever present in my recollection, I was enjoying a walk with my friend in the city park and reciting poetry. At that age I knew entire books by heart, word for word. One of these was Goethe’s Faust. The sun was just setting and reminded me of a glorious passage:"
      T.p => T.raw "\begin{verse}"
      T.p => T.raw "The glow retreats, done is the day of toil;\"
      T.p => T.raw "It yonder hastes, new fields of life exploring;\"
      T.p => T.raw "Ah, that no wing can lift me from the soil\"
      T.p => T.raw "Upon its track to follow, follow soaring!"
      T.p => T.raw "\end{verse}"
      T.p => T.raw "As I uttered these inspiring words the idea came \textit{like a flash of lightning and in an instant the truth was revealed}. I drew with a stick on the sand the diagram shown six years later in my address before the American Institute of Electrical Engineers."
      T.p => T.raw "\end{quotation}"
      T.p => T.raw "\paragraph{}The idea comes to you newly. A discovery worthy of exploration on your current quest. Let it blossom in your mind – envision how this fruit of the mind blossoms and develops into something worthy. Will it be an idea that will last to the end of time?"
      T.p => T.raw "\paragraph{Inverted:} You may need to find a new idea to complete your quest."
      T.p => T.raw "\subsubsection{Two of wands: Pentacle of Wands}"
      T.p => T.raw "\paragraph{Giving the creation to the world: meeting Westinghouse}I gave a demonstration of my rotating field electric motor to the American Institute of Electrical Engineers. Tribulations, exaltations, discoveries, despair and damage all may lie ahead. In the end, the world profits, but will I?"
      T.p => T.raw "\paragraph{}Take your conception, then conceive of moving it out to the world: Wisdom withheld is not Wise. The way to the world has many hurdles. You may need help."
      T.p => T.raw "\paragraph{Inverted:} The help you get may not always be to your advantage."
      T.p => T.raw "\subsubsection{Three of wands:}"
      T.p => T.raw "\paragraph{The dollar/horsepower contract} The message of the usefulness of Tesla’s technology spreads until George Westinghouse, wealthy inventor of the Railroad Air Brake learned of it and conceived it as key to a future empire of power generation and distribution. We partnered to raise the quality of civilization. George Westinghouse buys Nicola Tesla’s patents on polyphase alternating current for \$60,000 and \$2.50 per horsepower of electrical capacity."
      T.p => T.raw "\paragraph{The Gestation Period} will tell us whether the rewards lie ahead, or, \textbf{inverted:} if this is yet another path to nowhere."
      T.p => T.raw "\subsubsection{Four of wands:}"
      T.p => T.raw "\paragraph{Unlimited funds to explore new Ideas in his NY shop.} The rate of electric capacity grows enormously in these years. Prosperity is assured from lucrative contracts with George Westinghouse. Nicola Tesla is celebrated world-wide as the leading mind in electricity. He builds a laboratory in New York City for his investigations, and dazzles visitors, including heads of state and notables of the era, with displays of the wonderful uses of his alternating electrical energy."
      T.p => T.raw "\subsubsection{Five of wands:}"
      T.p => T.raw "\paragraph{Battle of the currents}Tesla had an idea the was the opposite of the established inventor, Thomas Edison. Edison, a powerful and egocentric businessman, put his full energies into a battle of ideas: That Tesla’s ideas would cause great harm and that Edison’s ideas must be used. Edison financed and gave lectures around the country with live animals being tortured to death by electricity. These blows rained down on the public image of Tesla, making him seem cruel and inhuman in his soul. A Mad Scientist without regard for humanity. In the end, Tesla’s ideas proved superior, and George Westinghouse grew his corporation with the financial rewards. The next battle, the battle for radio and power transmission would not go so well for Tesla."
      T.p => T.raw "\subsubsection{Six of wands: }"
      T.p => T.raw "the Triumph of Niagara – The power of the Niagara river is used to create electricity which is sent to the communities of the Buffalo, NY region. Immediately, the industries in this region grow incredibly with easily available electric power. The New York Times wrote that Nicola Tesla had the “undisputed honor” of making this possible. Other voices of the 1890’s echoed similar adulation. Lord Kelvin said that Tesla “contributed more to electrical science than any man up to his time.” Nicola Tesla is congratulated by the world, but many others would wish to share the glory, and many others would wish to share the profits."
      T.p => T.raw "Great glory invites great envy. Great power invites it’s own dilution."
      T.p => T.raw "\subsubsection{Seven of wands: }"
      T.p => T.raw "Beset by Capitalists (pentacle - sword dudes with hired idea folks - lawyers ) He always tries yet another idea."
      T.p => T.raw "\subsubsection{Eight of wands:}"
      T.p => T.raw "The speed of thought creates an opium of success where new ideas create a zone of new reality. You can see the beauties of your own ideas. They flow quickly one upon each other. Do they hit their mark? Or are you blinded by their beauty and see little else?"
      T.p => T.raw "\begin{quote}I have perfected an interplanetary communication system\end{quote}"
      T.p => T.raw "\begin{quote}Life on other planets is a certitude.\end{quote}"
      T.p => T.raw "\begin{quote}The fear is … hitting other planets with this needle-point of tremendous energy…\end{quote}"
      T.p => T.raw "\begin{quote}The Tesla energy beam might be mistaken for some form of cosmic ray\end{quote}"
      T.p => T.raw "\begin{quote}I built it, demonstrated, and used it. Only a little time will pass before I can give it to the world.\end{quote}"
      T.p => T.raw "\begin{quote}these currents could keep a naked man warm at the North Pole\end{quote}"
      T.p => T.raw "\begin{quote}I expect to live to be able to set a machine in the middle of the room, and move it my no other agency than the energy of the medium in motion around us.\end{quote}"
      T.p => T.raw "\begin{quote}So many ideas go chasing through his brain that he can only seize a few of them as they fly, and of these he can only find the time and strength to bring a few to perfection. And it happens many times that another inventor who has conceived the same ideas anticipates him in carrying one out of them. Ah, I tell you, that makes a fellow’s heart ache."
      T.p => T.raw "\end{quote}"
      T.p => T.raw "\subsubsection{Nine of wands:}"
      T.p => T.raw "Vigilant, penniless, weary of the fight, but hoping for the next “big idea” to put him back in the spotlight."
      T.p => T.raw "\subsubsection{Ten of wands:}"
      T.p => T.raw "A flurry of ideas in his old age, that hint at fantastic things, but may really come to naught."
      T.p => T.raw "Buried under all the new ideas, he is rendered totally ineffective, unable to ask for help, he staggers along."
      T.p => T.raw "\subsubsection{Page of wands}"
      T.p => T.raw ":Messages, input, sensing of the environment.knight of wands:Action, putting ideas into practice, energies directed to the nuts and bolts of implementation. Follow through and perseverance.queen of wandsWhy we have ideas, wise incorporation of the pulse and problems of the people affected by the wand energy (innovation)"
      T.p => T.raw "\subsubsection{Knight of Wands}"
      T.p => T.raw "\subsubsection{Queen of Wands}"
      T.p => T.raw "\subsubsection{king of wands}"
      T.p => T.raw "Evaluates the possibilities and risks of the creative energy. What ideas to implement first, how to find the resources to follow through to make them real."
      T.p => T.raw "\subsection{Suit of Wands}"
      T.p => T.raw "\paragraph{True Creation!}The wands represent the fruits of creative energy. Ideas are opposite of territory, the requirement of the swords, or security, the requirement of the pentacles. A naked idea is defenseless, it is iconoclastic and resisted by the pentacles, who are more centered around secure, physical possession. If cups be life and sensibility itself, the Wands are the life of mind."
      T.p => T.raw "\begin{quote}I do not think there is any thrill that can go through the human heart like that felt by the inventor as he sees some creation of the brain unfolding to success… Such emotions make a man forget food, sleep, friends, love, everything. – Nicola Tesla, 1986\end{quote}"
      T.p => T.raw "\paragraph{The essence of wand energy is Nicola Tesla.} Tesla is the artist that paints on the canvas of culture with the brush of technology. As such he ranks with Beethoven, Bach, Da Vinci, Christ and Lao Tzu. All these greats painted on the canvas of culture in indelible ink."
      T.p => T.raw "The events of Tesla’s life map well onto the messages of hope, opportunity, success, failure and strife illustrated by each card. Especially notable is the common end for the creative soul — the burden of hundreds of unharnessed ideas that weigh Nicola and bring him to enduring poverty and obscurity. He becomes the ideal of the mad scientist simply because we can not look deep enough into his soul for all the wands he flashes."
      T.p => T.raw "The Suit of Wands is the only suit with an unequivocal ten that signals the difficult end of the bearer of Wands."
      T.p => T.raw "\begin{quote}”It is not a dream, it is a simple feat of scientific electrical engineering, only expensive — blind, faint-hearted, doubting world! … Humanity is not yet sufficiently advanced to be willingly led by the discoverer’s keen searching sense. But who knows? Perhaps it is better in this present world of ours that a revolutionary idea or invention instead of being helped and patted, be hampered and ill-treated in its adolescence — by want of means, by selfish interest, pedantry, stupidity and ignorance; that it be attacked and stifled; that it pass through bitter trials and tribulations, through the strife of commercial existence. So do we get our light. So all that was great in the past was ridiculed, condemned, combatted, suppressed — only to emerge all the more powerfully, all the more triumphantly from the struggle.” — \textbf{Nikola Tesla} upon the plight of the Wardenclyffe project.\end{quote}"
      T.p => T.raw "\paragraph{}Wands also imply newness and change, and yes, unpredictability. Unpredictability creates suspicion and avoidance."
      T.p => T.raw "\subsubsection{Ace of Wands:}"
      T.p => T.raw "\paragraph{The breakthrough} of rotating magnetic fields! Very few examples of the great inventions of civilization can be traced to one person. The final key to electric power for the world can be traced to the work of Nicola Tesla. This is his description of the idea of rotating magnetic fields – the key to converting electric energy into motion."
      T.p => T.raw "\begin{quotation}"
      T.p => T.raw "One afternoon, which is ever present in my recollection, I was enjoying a walk with my friend in the city park and reciting poetry. At that age I knew entire books by heart, word for word. One of these was Goethe’s Faust. The sun was just setting and reminded me of a glorious passage:"
      T.p => T.raw "\begin{verse}"
      T.p => T.raw "The glow retreats, done is the day of toil;\"
      T.p => T.raw "It yonder hastes, new fields of life exploring;\"
      T.p => T.raw "Ah, that no wing can lift me from the soil\"
      T.p => T.raw "Upon its track to follow, follow soaring!"
      T.p => T.raw "\end{verse}"
      T.p => T.raw "As I uttered these inspiring words the idea came \textit{like a flash of lightning and in an instant the truth was revealed}. I drew with a stick on the sand the diagram shown six years later in my address before the American Institute of Electrical Engineers."
      T.p => T.raw "\end{quotation}"
      T.p => T.raw "\paragraph{}The idea comes to you newly. A discovery worthy of exploration on your current quest. Let it blossom in your mind – envision how this fruit of the mind blossoms and develops into something worthy. Will it be an idea that will last to the end of time?"
      T.p => T.raw "\paragraph{Inverted:} You may need to find a new idea to complete your quest."
      T.p => T.raw "\subsubsection{Two of wands: Pentacle of Wands}"
      T.p => T.raw "\paragraph{Giving the creation to the world: meeting Westinghouse}I gave a demonstration of my rotating field electric motor to the American Institute of Electrical Engineers. Tribulations, exaltations, discoveries, despair and damage all may lie ahead. In the end, the world profits, but will I?"
      T.p => T.raw "\paragraph{}Take your conception, then conceive of moving it out to the world: Wisdom withheld is not Wise. The way to the world has many hurdles. You may need help."
      T.p => T.raw "\paragraph{Inverted:} The help you get may not always be to your advantage."
      T.p => T.raw "\subsubsection{Three of wands:}"
      T.p => T.raw "\paragraph{The dollar/horsepower contract} The message of the usefulness of Tesla’s technology spreads until George Westinghouse, wealthy inventor of the Railroad Air Brake learned of it and conceived it as key to a future empire of power generation and distribution. We partnered to raise the quality of civilization. George Westinghouse buys Nicola Tesla’s patents on polyphase alternating current for \$60,000 and \$2.50 per horsepower of electrical capacity."
      T.p => T.raw "\paragraph{The Gestation Period} will tell us whether the rewards lie ahead, or, \textbf{inverted:} if this is yet another path to nowhere."
      T.p => T.raw "\subsubsection{Four of wands:}"
      T.p => T.raw "\paragraph{Unlimited funds to explore new Ideas in his NY shop.} The rate of electric capacity grows enormously in these years. Prosperity is assured from lucrative contracts with George Westinghouse. Nicola Tesla is celebrated world-wide as the leading mind in electricity. He builds a laboratory in New York City for his investigations, and dazzles visitors, including heads of state and notables of the era, with displays of the wonderful uses of his alternating electrical energy."
      T.p => T.raw "\subsubsection{Five of wands:}"
      T.p => T.raw "\paragraph{Battle of the currents}Tesla had an idea the was the opposite of the established inventor, Thomas Edison. Edison, a powerful and egocentric businessman, put his full energies into a battle of ideas: That Tesla’s ideas would cause great harm and that Edison’s ideas must be used. Edison financed and gave lectures around the country with live animals being tortured to death by electricity. These blows rained down on the public image of Tesla, making him seem cruel and inhuman in his soul. A Mad Scientist without regard for humanity. In the end, Tesla’s ideas proved superior, and George Westinghouse grew his corporation with the financial rewards. The next battle, the battle for radio and power transmission would not go so well for Tesla."
      T.p => T.raw "\subsubsection{Six of wands: }"
      T.p => T.raw "the Triumph of Niagara – The power of the Niagara river is used to create electricity which is sent to the communities of the Buffalo, NY region. Immediately, the industries in this region grow incredibly with easily available electric power. The New York Times wrote that Nicola Tesla had the “undisputed honor” of making this possible. Other voices of the 1890’s echoed similar adulation. Lord Kelvin said that Tesla “contributed more to electrical science than any man up to his time.” Nicola Tesla is congratulated by the world, but many others would wish to share the glory, and many others would wish to share the profits."
      T.p => T.raw "Great glory invites great envy. Great power invites it’s own dilution."
      T.p => T.raw "\subsubsection{Seven of wands: }"
      T.p => T.raw "Beset by Capitalists (pentacle - sword dudes with hired idea folks - lawyers ) He always tries yet another idea."
      T.p => T.raw "\subsubsection{Eight of wands:}"
      T.p => T.raw "The speed of thought creates an opium of success where new ideas create a zone of new reality. You can see the beauties of your own ideas. They flow quickly one upon each other. Do they hit their mark? Or are you blinded by their beauty and see little else?"
      T.p => T.raw "\begin{quote}I have perfected an interplanetary communication system\end{quote}"
      T.p => T.raw "\begin{quote}Life on other planets is a certitude.\end{quote}"
      T.p => T.raw "\begin{quote}The fear is … hitting other planets with this needle-point of tremendous energy…\end{quote}"
      T.p => T.raw "\begin{quote}The Tesla energy beam might be mistaken for some form of cosmic ray\end{quote}"
      T.p => T.raw "\begin{quote}I built it, demonstrated, and used it. Only a little time will pass before I can give it to the world.\end{quote}"
      T.p => T.raw "\begin{quote}these currents could keep a naked man warm at the North Pole\end{quote}"
      T.p => T.raw "\begin{quote}I expect to live to be able to set a machine in the middle of the room, and move it my no other agency than the energy of the medium in motion around us.\end{quote}"
      T.p => T.raw "\begin{quote}So many ideas go chasing through his brain that he can only seize a few of them as they fly, and of these he can only find the time and strength to bring a few to perfection. And it happens many times that another inventor who has conceived the same ideas anticipates him in carrying one out of them. Ah, I tell you, that makes a fellow’s heart ache."
      T.p => T.raw "\end{quote}"
      T.p => T.raw "\subsubsection{Nine of wands:}"
      T.p => T.raw "Vigilant, penniless, weary of the fight, but hoping for the next “big idea” to put him back in the spotlight."
      T.p => T.raw "\subsubsection{Ten of wands:}"
      T.p => T.raw "A flurry of ideas in his old age, that hint at fantastic things, but may really come to naught."
      T.p => T.raw "Buried under all the new ideas, he is rendered totally ineffective, unable to ask for help, he staggers along."
      T.p => T.raw "\subsubsection{Page of wands}"
      T.p => T.raw ":Messages, input, sensing of the environment.knight of wands:Action, putting ideas into practice, energies directed to the nuts and bolts of implementation. Follow through and perseverance.queen of wandsWhy we have ideas, wise incorporation of the pulse and problems of the people affected by the wand energy (innovation)"
      T.p => T.raw "\subsubsection{Knight of Wands}"
      T.p => T.raw "\subsubsection{Queen of Wands}"
      T.p => T.raw "\subsubsection{king of wands}"
      T.p => T.raw "Evaluates the possibilities and risks of the creative energy. What ideas to implement first, how to find the resources to follow through to make them real."
  # 
  # section ace_of_wands
  # 
  ace_of_wands: =>
    T.h2 "#ace-of-wands", id: "ace-of-wands", => T.raw "Ace of Wands"
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
page = new wands
console.log T.render page.html

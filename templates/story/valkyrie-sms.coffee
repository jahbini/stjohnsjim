# #-------- class start
###
<div style="width: 300px">
  <div class="flex items-center border rounded">
    <img class="flex-none mr1" src="http://i.imgur.com/KveOp9g.png" alt="Scrappy-Doo">
    <div>
      <h1 class="m0">Scrappy-Doo</h1>
      <small class="caps">Pet Detective</small>
    </div>
  </div>
</div>
###
advertisement =()->
  T.div ".siteInvitation"
  
class MediaBox extends T.Component
  view:(vnode)=>
    T.div '.c-card',=>
      T.div ".c-card__item.o-media" ,=>
        T.div ".o-media__image.col-1", =>
          T.img ".o-image.circle", src:vnode.image
        T.div ".o-media__body",=>
          if vnode.title?
            T.h4 ".c-heading", =>
              T.text vnode.title
              if vnode.subtitle
                T.text ": "
                T.span ".h3.c-heading__sub", vnode.subtitle
          T.p ".c-paragraph", vnode.content
        
skuldSays = T.bless class skuldBox extends MediaBox
  view:(vnode) =>
    vnode.title = "Msg from"
    vnode.subtitle = "Skuld"
    vnode.image = "story/valkyrie-sms/harpie-aveugle-t.jpg"
    super vnode
aubrunSays = T.bless class aubrunBox extends MediaBox
  view:(vnode) =>
    vnode.image =  "story/valkyrie-sms/harpi-t.png"
    vnode.title = "Msg from"
    vnode.subtitle = "Aubrun"
    super vnode

renderer = class  valkyrie_sms extends stjohnsjimtemplate
  # 
  # section html
  # 
  # 
  # section stjohnsjim_body
  # 
  # 
  # section container
  # 
  # 
  # section footer
  # 
  # 
  # section footer_info
  # 
  # 
  # section story
  # 
  # 
  # section sidebar
  # 
  # 
  # section main
  # 
  mainUnused: =>
    T.div "#main", =>
      @post_valkyrie_sms()
  # 
  # section post_valkyrie_sms
  # 
  post_valkyrie_sms: =>
    T.div "#post-valkyrie-sms.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Valkyrie On-Line"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/story/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "Per a reader’s request for a story for diary entries about a Valkyrie.  I changed the &quot;diary&quot; idea into using on-line messaging instead; more of a challenge."
      T.p =>
        T.raw "I got some background at this site –"
        T.a href: "http://lokis-dottir.livejournal.com/68127.html", => T.raw "http://lokis-dottir.livejournal.com/68127.html"
      T.p =>
        T.raw "Our heroine is Aubrun, a low-ranking wage slave in some corporate hierarchy of the afterlife.  Her mid-level overlord, Skuld, feels she needs to keep these"
        T.a href: "http://www.theoi.com/Daimon/Keres.html", => T.raw "death goddesses"
        T.raw "on a tight leash:  “"
        T.em => T.raw "Cravers of blood, All of ‘em"
        T.raw "“"
      T.p => T.raw "The following is intended to be a real-time corporate messaging between two myth-twits (mythical tweeters) – hey, who says spiritual beings cant be on the internet."
      T.ol =>
        T.li =>
          T.p =>
            T.raw "Aubrun - Valkyrie  – Addresses her messages to @Skuld"
            T.div ".clearfix.mb2.border-bottom.fit.fancybox.p2", =>
              T.comment "href=@pathToMe/harpi.png title=Harpie Junior Grade Aubrun Reports, Sir! text=aubrun@fancybox.p2"
              T.a ".block.mx-auto", href: "story/valkyrie-sms/harpi.png", title: "Harpie Junior Grade Aubrun Reports, Sir!", =>
                T.img ".fig-img", src: "story/valkyrie-sms/harpi-t.png", alt: "aubrun"
              T.p ".caption", => T.raw "Harpie Junior Grade Aubrun Reports, Sir!"
        T.li =>
          T.p =>
            T.raw "Skuld - Senior Valkyrie – Take no lip, give no tit"
            T.div ".clearfix.mb2.border-bottom.fit.fancybox.p2", =>
              T.comment "href=@pathToMe/harpie-aveugle.jpg title=I am ready for my close-up, Mr. DeMille text=skuld@fancybox.p2"
              T.a ".block.mx-auto", href: "story/valkyrie-sms/harpie-aveugle.jpg", title: "I am ready for my close-up, Mr. DeMille", =>
                T.img ".fig-img", src: "story/valkyrie-sms/harpie-aveugle-t.jpg", alt: "skuld"
              T.p ".caption", => T.raw "I am ready for my close-up, Mr. DeMille"
        T.li =>
          T.p =>
            T.a href: "https://en.wikipedia.org/wiki/Sessrúmnir", => T.raw "Sessrumnir"
            T.raw ": – Valhalla’s waiting station, A giant hall of limbo with wooden benches for the dead."
      T.hr()
      skuldSays content:"@Aubrun assignment: 11/23/09 08:30 UTC You have been re-assigned to Darfur sector 3B. report immediately"
      aubrunSays content:" @Skuld K"
      advertisement()
      skuldSays content:" @Aubrun upon arrival you will choose souls from only the dead, not like in your last assignment."
      aubrunSays content:" @Skuld but he was in a coma!  That's as good as dead!"
      skuldSays content: " @Aubrun no, we went all over that during the inquiry.  I don't know why Odin stepped in and gave you another chance, but wise up."
      aubrunSays content: " @Skuld OK, I've learned my lesson.  I'm not to CHOOSE any but really dead souls from the battles."
      skuldSays content:" @Aubrun That's right, returns are 2 expensive in temporal and spiritual corrections that must be made."
      skuldSays content:" @Aubrun Begin your reports from Darfur sector 3B immediately."
      T.p => T.raw "Sessrumnir makes automatic reports on arrivals and departures."
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", =>
        T.div ".h2.p1.fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", => T.raw " @Skuld 11/23/09 08:45 UTC 1EA soul labeled 35273 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", =>
        T.div ".h2.p1.fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", => T.raw " @Skuld 11/23/09 08:51 UTC 1EA soul labeled 35985 deposited to Sessrumnir input"
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", =>
        T.div ".h2.p1.fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", => T.raw " @Skuld 11/23/09 08:52 UTC 1EA soul labeled 37226 deposited to Sessrumnir input"
      aubrunSays content:" Sessrumnir numbers are going up fast! from 35273 to 37226 in 7 minutes! Too many dead today! "
      skuldSays content:" @Aubrun You know, I read that too, and you get paid. Just be happy you are still working"
      aubrunSays content: " @Skuld K, but it's lots of work and long hours down here as a Valkyrie."
      skuldSays content:" @Aubrun You get maximum pay for your job specification.  If you need, go to HR."
      aubrunSays content:" @Skuld No, I'm not going to HR again: all smiles and coo-ing.  Liars all."
      T.div ".flex.justify-start.border.rounded.ml2.mt3.col-11", =>
        T.div ".h2.p1.fuchsia", =>
          T.raw "Sessrumnir --"
          T.img ".circle.fig-img", width: "64", height: "64", src: "story/valkyrie-sms/sessrumnir-t.jpg"
        T.div ".self-center.h3", => T.raw " @Skuld 11/23/09 09:11 UTC 1EA soul labeled 38177 deposited to Sessrumnir input"
      aubrunSays content: " @Skuld I’m at Sessrumnir processing says they have 4 souls destined for Valhalla, and want me to take them"
      skuldSays content: " @Aubrun Nix on the escort to Vahallah, you don't have seniority, and you are only qualified for 2 souls transport."
      aubrunSays content: " @Skuld  Sorry, I already took all 4.  I'm in transit to Valhalla, I'll check in there."
      T.p => T.raw "later."
      skuldSays content: " @Aubrun Valhalla reports that you did not arrive as scheduled.  U there?"
      T.p => T.raw "Much later."
      skuldSays content: " @Aubrun U there?  REPORT!"
      skuldSays content: " @Aubrun  Where are you?  What have you done with those souls??"
      skuldSays content: " @Aubrun Odin won't save you this time, you better check in NOW."
      T.p => T.raw "A bit later…"
      aubrunSays content: " @Skuld Um.  K. I'm having a little trouble.  Still en-route."
      skuldSays content: "  @Aubrun  Don't tell me you dropped a soul again!  And this one was for Valhalla?  Odin will be pissed."
      aubrunSays content: " @Skuld  No sweat, just tell him that Loki tripped me up again."
      skuldSays content: " @Aubrun LOL!  I used that excuse myself when I was still doing soul-transport. Always Works."
      aubrunSays content: "@Skuld yes Loki ALWAYS admits to everything just to piss ODIN off! :-)"
      skuldSays content: "enjoy your afterlife, @Aubrun!"
      T.hr()
  # 
  # section header
  # 
  # 
  # section sidecar
  # 
  # 
  # section fb_status
  # 
  # 
  # section header_inner
  # 
  # 
  # section main_nav
  # 
  # 
  # section main_nav_toggle
  # 
  # 
  # section banner
  # 
  allMeta = [[["name","author"],["content","James A. Hinds: St. John's Jim -- King of Cascadia"]],[["http-equiv","Content-Type"],["content","text/html"],["charset","UTF-8"]],[["name","viewport"],["content","width=device-width, initial-scale=1"]],[["name","description"],["content","Stories from the 'Puter of St. John's Jim"]],[["name","keywords"],["content","Pier Park, Cathedral Park, fiction, North Portland,St. John's, st johns"]],[["property","fb:admins"],["content","187314157994069"]],[["name","msapplication-TileColor"],["content","#ffffff"]],[["name","msapplication-TileImage"],["content","/assets/icons/ms-icon-144x144.png"]],[["name","theme-color"],["content","#ffffff"]]]
  htmlTitle = "Dictates of the King of Cascadia and Stories from the 'Puter of St. John's Jim"
#-------- class end
## ------- db start
db = {} unless db


db[id="stjohnsjim/story/valkyrie-sms"] =
  title: "Valkyrie On-Line"
  slug: "valkyrie-sms"
  category: "story"
  site: "stjohnsjim"
  accepted: true
  index: false
  headlines: [
    "Notes from the Norse Battlefields"
    "life before the afterlife"
    "If Valhalla Invented the Internet"
    "Are they just Schoolgirls at Heart?"
  ]
  tags: []
  snippets: "{}"
  memberOf: [
    "TAROT"
  ]
  created: "2010-10-25T15:55:41.000Z"
  lastEdited: "2010-10-25T16:24:19.000Z"
  published: "2016-09-19T00:00:00.000Z"
  embargo: "2016-09-19T00:00:00.000Z"
  captureDate: "2017-07-26T05:10:34.147Z"
  TimeStamp: "1501045834147"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "stjohnsjim/story/valkyrie-sms"
  name: "Valkyrie On-Line"
#
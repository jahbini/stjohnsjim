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
    preAmble = vnode.preAmble || ".bg-lighten-3"
    T.div "#{preAmble}.media.border.mb-2",=>
      T.img ".col-4.col-sm-2.circle", src:vnode.image
      T.div ".media-body.col-8.col-sm-10",=>
        if vnode.title?
          T.h5 "", =>
            T.text vnode.title
            if vnode.subtitle
              T.text ": "
              T.span ".h6", vnode.subtitle
        T.p "", vnode.content
        
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
sessrumnirSays = T.bless class sessrumnirBox extends MediaBox
  view: (vnode) =>
    vnode.image = "story/valkyrie-sms/sessrumnir-t.jpg"
    vnode.title = "Sessrumnir"
    vnode.preAmble = ".bg-warning"
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
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", =>
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
      T.div ".card-group", =>
        T.div ".card", =>
          T.img ".card-img-top", src: "story/valkyrie-sms/harpi.png", alt: "aubrun"
          T.h5 '.card-title', "Aubrun - Valkyrie"
          T.p ".card-text", "Harpie Junior Grade Aubrun Reports, Sir!"
        T.div ".card", =>
          T.img ".card-img-top", src:  "story/valkyrie-sms/harpie-aveugle.jpg", alt: "Aveugle"
          T.h5 ".card-title", "Skuld - Senior Valkyrie – Take no lip, give no tit"
          T.p  ".card-text", "I am ready for my close-up, Mr. DeMille"
        T.div ".card", =>
          T.img ".card-img-top", src: "story/valkyrie-sms/sessrumnir-t.jpg", alt: "Sessrumnir"
          T.p ".card-text", =>
            T.raw ": – Valhalla’s waiting station, A giant hall of limbo with wooden benches for the dead."
            T.a href: "https://en.wikipedia.org/wiki/Sessrúmnir", => T.raw "Sessrumnir"
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
      sessrumnirSays content: "@Skuld 11/23/09 08:45 UTC 1EA soul labeled 35273 deposited to Sessrumnir input"
      sessrumnirSays content: "@Skuld 11/23/09 08:51 UTC 1EA soul labeled 35985 deposited to Sessrumnir input"
      sessrumnirSays content: "@Skuld 11/23/09 08:52 UTC 1EA soul labeled 37226 deposited to Sessrumnir input"
      aubrunSays content:" Sessrumnir numbers are going up fast! from 35273 to 37226 in 7 minutes! Too many dead today! "
      skuldSays content:" @Aubrun You know, I read that too, and you get paid. Just be happy you are still working"
      aubrunSays content: " @Skuld K, but it's lots of work and long hours down here as a Valkyrie."
      skuldSays content:" @Aubrun You get maximum pay for your job specification.  If you need, go to HR."
      aubrunSays content:" @Skuld No, I'm not going to HR again: all smiles and coo-ing.  Liars all."
      sessrumnirSays content: "@Skuld 11/23/09 09:11 UTC 1EA soul labeled 38177 deposited to Sessrumnir input"
      aubrunSays content: " @Skuld I’m at Sessrumnir processing says they have 4 souls destined for Valhalla, and want me to take them"
      sessrumnirSays content: "@Skuld 11/23/09 09:35 UTC 4EA soul 35273,32338,36553,38177 to @aubrun for transit"
      skuldSays content: " @Aubrun Nix on the escort to Vahallah, you don't have seniority, and you are only qualified for 2 souls transport."
      aubrunSays content: " @sessrumnir 4 souls accepted for transit to Valhala"
      aubrunSays content: " @Skuld  Sorry, I already took all 4.  I'm in transit to Valhalla, I'll check in there."
      T.h3 "later."
      skuldSays content: " @Aubrun Valhalla reports that you did not arrive as scheduled.  U there?"
      T.h3 "Much later."
      skuldSays content: " @Aubrun U there?  REPORT!"
      skuldSays content: " @Aubrun  Where are you?  What have you done with those souls??"
      skuldSays content: " @Aubrun Odin won't save you this time, you better check in NOW."
      T.h3 "A bit later…"
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
# #-------- class start
class MediaBox extends T.Component
  view:(vnode)=>
    preAmble = vnode.preAmble || ".bg-lighten-3"
    T.div "#{preAmble}.media.border.mb-2",=>
      T.img ".col-3.col-sm-2.circle", src:vnode.image if vnode.image
      T.div ".media-body.col-8.col-sm-10",=>
        if vnode.title?
          T.h5 "", =>
            T.text vnode.title
            if vnode.subtitle
              T.text ": "
              T.span ".h6", vnode.subtitle
        T.p "", vnode.content

popsSays = T.bless class popsBox extends MediaBox
  view:(vnode) =>
    vnode.title = "Msg from"
    vnode.subtitle = "Pops"
    #vnode.image = "story/valkyrie-sms/harpie-aveugle-t.jpg"
    super vnode
poopsSays = T.bless class poopsBox extends MediaBox
  view:(vnode) =>
    #vnode.image =  "story/valkyrie-sms/harpi-t.png"
    vnode.title = "Msg from"
    vnode.subtitle = "Poops"
    super vnode
chuSays = T.bless class chuBox extends MediaBox
  view: (vnode) =>
    #vnode.image = "story/valkyrie-sms/sessrumnir-t.jpg"
    vnode.title = "Chu"
    vnode.preAmble = ".bg-warning"
    super vnode
chaSays = T.bless class chaBox extends MediaBox
  view: (vnode) =>
    #vnode.image = "story/valkyrie-sms/sessrumnir-t.jpg"
    vnode.title = "Cha"
    vnode.preAmble = ".bg-warning"
    super vnode

renderer = class  index extends stjohnsjimtemplate
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
      @post_index()
  # 
  # section post_index
  # 
  post_index: =>
    T.div "#post-index.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Grand Visions from the 'Puter of St. John's Jim"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/-/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents",  =>
      T.h2 "pops and poops talk"
      poopsSays content: "Well, it was all well and good when we lived in that cute village up the Mekong river, but now that our bamboo got made into a bookcase and shipped to France where they lived with Napoleon’s diaries."
      T.p "They had just witnessed Bonita del Fabulosa’s gender reveal party.  Tommy was there, too."
      T.p "Tommy had a minion that would ride in the back of the pickup truck and snag a goat from a nearby truck.  sometimes when the trucks were moving, too."
      T.p "They were only caught once when the minion Southwick, who at that time was on his “anti-cock-block” campaign.  Well, it was when Southwick didn’t dispatch the goat quickly enough:  The goat bawling while Southwick chanted the names of kung-fu deities and fumbling with the Makita Drill."
      T.p "Tommy gunned it, and sped across the St. John’s Bridge.  His pursuer didn’t make the turn at the end fast enough and crashed into the hillside."

      T.p "After that Southwick had to take remedial training in goat garroting by a garrison of goatairian garroteers.  Southwick left Portland rather than take this fateful step."
      T.p "Southwick now prefers to channel the spirits of small insects.  From the ectopian beyond, that is.  You know, where no mind should go, but it’s OK.  At least there is a clean ending.  Not crappy, like the ending of \“Glitch\”"

      T.p "It seems that Bonita, remember her? Yes, The Bonita, was telling Napolean of the suffering of the vermiculites and the stalagmites."

      T.p "All the while pops and poops saw and heard it all as they snacked on the bookcase.  It was bamboo, and handcrafted, lightweight, sturdy and fashionable in the society of the day."

      T.p "Pops scraped off another bit of bamboo and passed it to Poops."
      popsSays content: "Here, have a bite of this: there is extra flavor in this section of bamboo.  Do you think it’s the fungus? And I think the stalagmites are on solid ground here"

      T.p "Poops gobbled it up greedily and put it into her purifier."
      poopsSays content: "The vermiculites will wear away the resistance.  But this bamboo is divine!  I can have it all purified by later this evening, and earn my name! Poops."

      T.p "Pops squeezed up his face for a moment and POP, let out a cloud of purified bamboo sponges from his methane filled digester."
      popsSays content: "Wow, that was a big one, and nearly 100% pure.  The stalagmites always grow back, so don’t think this will go away.  Umm, I’m suddenly hungry, I’m going to scrape some bamboo"

      poopsSays content:  "Don’t forget to take little Chu and Cha with you, they can’t scrape a tunnel like you yet.  And they have stopped talking.  I guess the stalagmites are going to the gulag.  And now they are just going to make the humidity rise.  I hate that, it makes my eggs swell."

      T.p "Poops and pops lived a long and easy life in that bamboo bookcase until it fell apart and was put out on the street."

      T.p "As for Chu and Cha, they grew up and flew to the docks at the river and found a treasure of a lifetime: A whole shipment of Bamboo Chairs, Daybeds, Desks and Bookcases bound for places all over the world."

      T.p "A voice: So am I now Cha or Poops?  Poops Cha? Chapoops?"

      T.p "Another voice You will always be Poops, to Me, dear"

      poopsSays content:  "You always say the nice things, and you are always my Pops"
      popsSays content:  "Mmmmm. Pop!"
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

#
db[id="stjohnsjim/bamboo-tales/napolean"] =
  title: "napolean"
  slug: "napolean"
  category: "bamboo-tales"
  site: "stjohnsjim"
  accepted: false
  index: false
  sourcePath: ""
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2020-12-15T05:15:22.526Z"
  lastEdited: "2020-12-15T05:15:22.527Z"
  published: "2020-12-15T05:15:22.527Z"
  embargo: "2020-12-15T05:15:22.527Z"
  captureDate: "2020-12-15T05:15:22.527Z"
  TimeStamp: 1608009322527
  debug: ""
  author: "James A. Hinds: St. John's Jim -- King of Cascadia"
  id: "stjohnsjim/bamboo-tales/napolean"
  name: "napolean"
#
#end of story

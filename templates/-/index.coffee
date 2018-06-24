#
# crd component
#
#include card.coffee
#
#-------- class start
renderer= class index extends stjohnsjimtemplate
  #
  # class storyHeadMatter
  #
  storyHeadMatter: ->
    #T.script type: "riot/tag", src: "draft/riot/riot/hello.tag"
  afterBody: ->
    return
  #
  # section FaceBook
  #
  FaceBook: ->   # just say no to FB
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
    HalvallaCard "#main.white.bg-lighten-1",{
      shadow:"highest"
      divider:true
      footerText: "that's all--"
      headerText:"Grand Visions from the 'Puter of St. John's Jim"
      subHeaderText: "No longer, simply St. John’s Jim, I hereby crown myself as King of Cascadia. Protector of the coast against all enemies, both foreign and Governmental."
      text: @post_index
      }, =>
      @post_index()
  # 
  # section post_index
  # 
  post_index: =>   # this is where we might put in style or script stuff specific to this section
    T.div "#post-index.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        @bloviation()
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", =>
      #T.tag "rg-card","#bogo"
      @announcement_()
      @cascadia_free_forever_()
      #@the_movement_is_on_us_()
      T.p => "America, no, Western Civi...   No, all the civilizations of the World are in deep turmoil as
we shift from rule by Objective Democracy to rule by Subjective Gangsta."
      T.p => T.raw """
No longer, simply St. John’s Jim, I hereby crown myself as King of Cascadia.  Protector of the coast against
all enemies, both foreign and Governmental.
"""
      T.p => T.raw """
But what previously were simply stories: untruths meant only for idle minds, have now become blazing
hot metaphors for the eternal struggle we are in.
"""
      T.p => T.raw """
The evil of the Tommies of Oregon, the Rationality of the Rogers of Washington, and the magic of the
Southwicks of California.  It is all in these stories.
"""
      T.p => T.raw """
For a magical time, I visited a land of great visions.  The vision of the fringes of
our near-prosperous America.  The not quite third-world life that exists beneath the great spires and arches of the St. John’s Bridge.
"""
      T.p => T.raw "Here they are:  Read them and laugh."
      @hail_cascadia_()
  # 
  # section hail_cascadia_
  # 
  hail_cascadia_: =>
    T.p ->
      T.raw "Here is this weeks favorite --"
      T.span ".h4","the Unique birth of the Roller Skating Legend, "
      T.a href: "http://stjohnsjim.com/roller-derby/bouncy-boom-gets-her-skates.html", =>
        T.span ".h3", "Bouncy Boom"
      
  # 
  # section the_movement_is_on_us_
  # 
  the_movement_is_on_us_: =>
    T.h3 "#the-movement-is-on-us-", => T.raw "the movement is on us!"
  # 
  # section cascadia_free_forever_
  # 
  cascadia_free_forever_: =>
    T.h2 "#cascadia-free-forever-", => T.raw "Cascadia Free Forever!"
  # 
  # section announcement_
  # 
  announcement_: =>
    T.h1 "#announcement-", => T.raw "Announcement!"
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
db = {} unless db
db[id="stjohnsjim/-/index"] =
  title: "Grand Visions from the 'Puter of St. John's Jim"
  slug: "index"
  category: "-"
  site: "stjohnsjim"
  accepted: true
  index: true
  headlines: [
    "Visions of Beauty Obscured"
    "The Most Beautiful Bridge, But?!?!"
    "Hookers Hook in the Great Northwest!"
    "Tales from Pre-legalization!"
  ]
  tags: []
  snippets: "{}"
  memberOf: []
  created: "2016-03-11T12:40:04.000Z"
  lastEdited: "2016-03-11T14:20:28.000Z"
  published: "2016-03-11T12:40:04.000Z"
  embargo: "2016-03-11T12:40:04.000Z"
  captureDate: "2017-07-26T05:10:33.484Z"
  TimeStamp: "1501045833484"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "stjohnsjim/-/index"
  name: "Grand Visions from the 'Puter of St. John's Jim"
#
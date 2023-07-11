# #-------- class start
doHtml=true
renderer = class  index extends siteTemplate
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
  storyBar: =>
    if doHtml
      doHtml=false
      @html()
    else
      T.raw "<slot:storyBar/>"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      @announcement_()
      @cascadia_free_forever_()
      @the_movement_is_on_us_()
      T.p => T.raw "We have been duped by the Pimp Trump and hearded by his cowboys into our last truck ride."
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
Southwicks of California.
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
    T.h2 "#hail-cascadia-", => T.raw "Hail! Cascadia!"
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
## ------- db start
db = {} unless db

#

db[id="stjohnsjim/app/app"] =
  title: "app"
  slug: "app"
  category: "app"
  site: "stjohnsjim"
  accepted: false
  index: false
  sourcePath: ""
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2023-07-11T14:57:34.716Z"
  lastEdited: "2023-07-11T14:57:34.717Z"
  published: "2023-07-11T14:57:34.717Z"
  embargo: "2023-07-11T14:57:34.717Z"
  captureDate: "2023-07-11T14:57:34.717Z"
  TimeStamp: 1689087454717
  debug: ""
  author: "James A. Hinds: St. John's Jim -- King of Cascadia"
  id: "stjohnsjim/app/app"
  name: "app"
#

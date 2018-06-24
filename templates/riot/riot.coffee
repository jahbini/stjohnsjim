#
# accordion component
#
#include accordion.coffee
							
# 
#-------- class start
renderer= class  riot extends stjohnsjimtemplate
  #
  # class storyHeadMatter
  #
  storyHeadMatter: ->
    #T.link rel: "stylesheet", href: "assets/css/vendor.css"
    #T.link rel: "stylesheet", href: "assets/css/app.css"
    #T.script type: "riot/tag", src: "draft/riot/riot/hello.tag"
    T.link rel:"stylesheet", href:"https://unpkg.com/blaze@4.0.0-14/scss/dist/blaze.min.css"
  afterBody: ->
    return
    T.coffeescript mountBogo
    
  mountBogo= -> $ ->
    do ->
      el = document.getElementById 'bogo'
      
      tags = riot.mount '#bogo',{
        observer: Pylon
        card:
          text: "My **precious** text, it's _mine_! It's _mine_!<br />",
          header:
            #image: "https://unsplash.it/1024/500?random"
            text: "**Master** of the _Universe_",
            subhead: "Job Vacancy",
            divider: true,
  #         style: "brand"  # inserts empty div with blaze style set to brand
          footer:
            text: "Do you like this?"
  #         divider: true   # do not use -- compiler fails
 #         style: "error"  #do not use style -- compiler fails
 #         block: true,  # block style will merge items into the lower border
            items: [ {text: "Yes"}, {text: "Maybe", style: "warning"}, {text: "No", style: "error"}]
        },1500
      console.log el
      if tags
        console.log tags
        tags[0].on "button-clicked", 
          (e)->
            console.log "button-clicked:", e
            e.disabled = true
            return
      else
        console.log "no compile!"
      return
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
      }
  # 
  # section post_index
  # 
  post_index: =>   # this is where we might put in style or script stuff specific to this section
   HalvallaExpandable '#test.testClass', cards: [
    {headline:"first big card", elements: "an element - 1"}
    {headline:"second card", elements: "an element -snafu "}
    {headline:"third card", elements: "an udder element"}
    {headline:"fourth card", elements: "an elementi bogi"}
    {headline:"fifth card", elements: "an element to finish up"}
    ]
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", =>
      #T.tag "rg-card","#bogo"
      @announcement_()
      @cascadia_free_forever_()
      @the_movement_is_on_us_()
      HalvallaExpandable '#test.testClass', cards: [
       {headline:"first big card", elements: "an element - 1"}
       {headline:"second card", elements: "an element -snafu "}
       {headline:"third card", elements: "an udder element"}
       {headline:"fourth card", elements: "an elementi bogi"}
       {headline:"fifth card", elements: "an element to finish up"}
      ]
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
# ------- db start
db = {} unless db

#

db[id="stjohnsjim/riot/riot"] =
  title: "riot"
  slug: "riot"
  category: "riot"
  site: "stjohnsjim"
  accepted: false
  index: false
  sourcePath: ""
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2018-05-21T06:31:44.623Z"
  lastEdited: "2018-05-21T06:31:44.624Z"
  published: "2018-05-21T06:31:44.624Z"
  embargo: "2018-05-21T06:31:44.624Z"
  captureDate: "2018-05-21T06:31:44.624Z"
  TimeStamp: 1526884304624
  debug: ""
  author: "James A. Hinds: St. John's Jim -- King of Cascadia"
  id: "stjohnsjim/riot/riot"
  name: "riot"
#
# #-------- class start
class  roger_dojer extends stjohnsjimtemplate
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
  main: =>
    T.div "#main", =>
      @post_roger_dojer()
  # 
  # section post_roger_dojer
  # 
  post_roger_dojer: =>
    T.div "#post-roger-dojer.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Roger Dojer"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/backstory/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "Roger grew up on the Oregon coast during the late 40’s and 50’s, the heyday of the hopped-up jalopy. Every teen needed a car to tinker with in the 50’s – It was the hobby of choice for guys. Roger’s love of mechanics was very useful in his Navy career: he earned a PhD in Preventative Maintenance and was the mechanic of choice for the whole fleet. It was said that one captain pissed off the admiral, and Roger’s transfer to another ship was his punishment."
      T.p => T.raw "Roger retired with full benefits from the Navy after 20 years and got another job in Portland. Worked there another 20 years and retired again."
      T.p => T.raw "On the minus side, Roger was not so prosperous in his marriages. Three divorces left him with nearly zero except his big-boy toys: full dress Harley, pick-up, ski-doo, dune buggy, trailer."
      T.p => T.raw "Roger is best remembered as the Guna of regularity, fairness and strict accounting. He resided at 3 Gunas Lp to offset Tommy’s chaos and Southwick’s empty altruism."
      T.p => T.raw "Roger left the house at 3 Gunas Lp as described in {{{RogerObt}}}"
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
page = new roger_dojer
rendered =  T.render page.html
# ------- db start
db = {} unless db


db[id="59782449d3cfff7cc5f9267d"] =
  title: "Roger Dojer"
  slug: "roger-dojer"
  category: "backstory"
  site: "59781236d3cfff7cc5f92609"
  accepted: true
  index: false
  headlines: []
  tags: []
  snippets: "{\"rogerobt\":\"rogerobt\"}"
  memberOf: [
    "GUNAS"
  ]
  created: "2011-08-24T12:52:23.000Z"
  lastEdited: "2011-09-03T15:37:17.000Z"
  published: "2011-09-03T15:37:17.000Z"
  embargo: "2017-12-31T23:59:59.000Z"
  captureDate: "2017-07-26T05:10:33.000Z"
  TimeStamp: "1501045833000"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "59782449d3cfff7cc5f9267d"
  name: "Roger Dojer"
#
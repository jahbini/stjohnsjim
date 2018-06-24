# #-------- class start
renderer = class  new_look extends stjohnsjimtemplate
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
      @post_new_look()
  # 
  # section post_new_look
  # 
  post_new_look: =>
    T.div "#post-new-look.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "New Look!"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/announcement/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.h2 => T.raw "wowzers!"
      T.p ".circle.border", =>
        T.raw """
I'm writing this new article without a wysiwig editor: I'm going primitive!
Everything is now in
"""
        T.span ".px1.fa.fa-coffee", => T.raw "Coffeescript."
      T.p => T.raw """
It's kind of like building my own printing press out of electrons and software.
The big hope is that with the fine control over each pixel on your screen will make
me become a Grok-star.
"""
      T.aside ".border.rounded.bg-silver.h4.no-column-break", =>
        T.pre ".h6", => T.raw """
T.p &quot;.circle.border&quot;, -&gt;
   T.raw &quot;&quot;&quot;
I'm writing this new article without a wysiwig editor: I'm going primitive!
Everything is now in
&quot;&quot;&quot;
   T.span &quot;.px1.fa.fa-coffee&quot;, &quot; Coffeescript.&quot;
"""
        T.p => T.raw "I promise that's the last of Coffeescript you will see on these pages -Otherwise, lets keep it a secret."
      T.div ".siteInvitation"
      T.p => T.raw """
Actually, I do hope to revitalize these stories with new looks to introduce the intertwined nature
of the stories: How the Daough sisters contrast with the Yucks over in Tommy, OR.  Read on!
"""
      T.aside => T.raw "Baby Steps"
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


db[id="59782449d3cfff7cc5f92677"] =
  title: "New Look!"
  slug: "new-look"
  category: "announcement"
  site: "stjohnsjim"
  accepted: false
  index: false
  headlines: [
    "New Presses Roll on St John's Jim Stories!"
    "Stories of The Bizarre and Normal: Portland, Saipan and elsewhere"
  ]
  tags: []
  snippets: "{}"
  memberOf: []
  created: "2016-04-08T00:00:00.000Z"
  lastEdited: "2016-04-06T00:00:00.000Z"
  published: "2016-04-06T00:00:00.000Z"
  embargo: "2030-01-01T00:00:00.000Z"
  captureDate: "2017-07-26T05:10:33.000Z"
  TimeStamp: "1501045833000"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "59782449d3cfff7cc5f92677"
  name: "New Look!"
#



db[id="stjohnsjim/announcement/new-look"] =
  title: "New Look!"
  slug: "new-look"
  category: "announcement"
  site: "stjohnsjim"
  accepted: false
  index: false
  headlines: [
    "New Presses Roll on St John's Jim Stories!"
    "Stories of The Bizarre and Normal: Portland, Saipan and elsewhere"
  ]
  tags: []
  snippets: "{}"
  memberOf: []
  created: "2016-04-08T00:00:00.000Z"
  lastEdited: "2016-04-06T00:00:00.000Z"
  published: "2016-04-06T00:00:00.000Z"
  embargo: "2030-01-01T00:00:00.000Z"
  captureDate: "2017-07-26T05:10:33.000Z"
  TimeStamp: "1501045833000"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "stjohnsjim/announcement/new-look"
  name: "New Look!"
#
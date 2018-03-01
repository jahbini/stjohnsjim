# #-------- class start
class  guru_city extends stjohnsjimtemplate
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
      @post_guru_city()
  # 
  # section post_guru_city
  # 
  post_guru_city: =>
    T.div "#post-guru-city.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Guru City!"
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
      T.p => T.raw "I apologize for the uneven nature of yesterdays &quot;wrestling with memes&quot; – There is a good story there someplace, but…  I hope this, smaller piece is better."
      T.p => T.raw "St. John’s is a festival of lights this season,  non blinking white, against a centerpiece in each intersection that goes from red to green, then yellow and back to red again!  Our St. John’s imagination is rampant with sterility!  (At this point, Kermit yells “Yaaayyyy, Sterility!”)"
      T.p => T.raw "Last night the Puking Mule tavern had a celebration that included more tree-trimming and song at 2AM – The caroake-carolers from the puking mule tavern came over and sang “I trimmed it MYYYYY Way”!"
      T.p => T.raw "(Author’s note: please do NOT mention that joke to anyone around the Puking Mule, I’ve heard that song enough and I don’t want to give them ideas.)"
      T.p => T.raw "A new business here in St. John’s is Guru City  specializing in channelling spirits on a seasonal basis."
      T.p =>
        T.raw "Guru City and Drive-through church through is having their Parade of the Spirits today.  The Guru Gals are guiding the spirits along the parade route above Lombard St.  If you look about 40 feet above the street, you won’t see them (they are invisible), but Guru City is channeling over 40 angels and spirits from"
        T.strong => T.raw "Abachta"
        T.raw "(one of the 7 angels of confusion) to"
        T.strong => T.raw "Kabniel"
        T.raw "(invoked to cure stupidity.) to"
        T.strong => T.raw "Zalbesael"
        T.raw ": (has dominion over the rainy season)."
      T.p => T.raw "Yes, right now, Zalbesael’s rain is passing overhead in St. John’s — Should we pay Guru City to keep Zalbesael happy?  Wouldn’t that help our weather?  is that thithing or extortion?   Southwick asked that question of these angels with City Councilman Bambi Brew."
      T.p => T.raw "Abachta: “Well, you know, you should give Guru City a little something for their trouble.”"
      T.p => T.raw "Bambi: “What do they want?  Taming rights for six more green elephants?”"
      T.p => T.raw "Kabniel: “Wise up buddy, don’t fall for that ‘powers over spirit’ — crap, just accept the rain.”"
      T.p => T.raw "Bambi: “Now that’s smart thinking.”"
      T.p => T.raw "Abachta: “And you should reward smart thinking, so maybe you should give Guru City a little something for their trouble — You know, they are the most successful Guru City in all the TRI-MET area.”"
      T.p => T.raw "Bambi: “OK, How about 3 green elephants?”"
      T.p => T.raw "Kabneil: &quot;Oy, Vey! I give up.&quot;"
      T.p => T.raw "Southwick stops by and says: &quot;Hey Bambi.  It doesn’t matter what Guru City does or does not do.  YOU are the one talking to these spirits.  Summon them and dispell them too.  It’s OK, there is fun and enlightenment there, but ALWAYS contact your own spirits yourself.  And remember,YOU are the one in control.  When, if ever, would you ever want to let an intermediary summon, talk, or dispell on behalf of your own spirituality?&quot;"
      T.p =>
        T.raw "If you can imagine this happening overhead in St. John’s today, then"
        T.span ".FBname", => T.raw "Friend"
        T.raw ", you are channeling spirits.  What else would Abachta (the angel of confusion say?) how about Kabneil?  You?  Have Fun!   Southwick says there’s enlightenment there sometimes."
      T.p => T.raw "What does he know, he channels spirits!  And gets rid of them too.  Make sure you get rid of the ones that don’t serve you."
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
page = new guru_city
rendered =  T.render page.html
# ------- db start
db = {} unless db
db[id="59782449d3cfff7cc5f9260c"] =
  title: "Guru City!"
  slug: "guru-city"
  category: "story"
  site: "59781236d3cfff7cc5f92609"
  accepted: true
  index: false
  sourcePath: "stjohnsjim/contents/story/guru-city.md"
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: [
    "GUNAS"
    "TAROT"
  ]
  created: "2010-12-08T18:01:29.000Z"
  lastEdited: "2010-12-08T18:42:10.000Z"
  published: "2010-12-08T18:42:10.000Z"
  embargo: "2017-12-31T23:59:59.000Z"
  captureDate: "2017-07-26T05:10:33.000Z"
  TimeStamp: "1501045833000"
  author: ""
  debug: ""
  id: "59782449d3cfff7cc5f9260c"
  name: "Guru City!"
#
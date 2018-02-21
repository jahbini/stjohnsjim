# 
class nobrow extends stjohnsjimtemplate
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
      @post_nobrow()
  # 
  # section post_nobrow
  # 
  post_nobrow: =>
    T.div "#post-nobrow.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "NoBrow"
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
      T.p => T.raw "A cheerful guy, for a street person. Cheerful and connected. He looks normal, only tiny bit odd, until you notice that he has no eyebrows at all. Everybody calls him Nobrow."
      T.p => T.raw "He sleeps in a junkyard. Has a girlfriend on heroin. She wanted $20 for a fix, and Nobrow wouldn’t give it to her. She went off an hour earlier with another guy who was going to get her a fix."
      T.p => T.raw "He sipped his beer and often looked across the street at the bus stop and replayed that moment. He described the look they had exchanged through the bus window. A mixture of defiance, surrender and regret all rolled into one. Nobrow wistfully said he was going to spend a month at a friend’s farm and live outside until the cold came on strong."
      T.p => T.raw "We shared a brew at Slim’s in St. John one afternoon. The call of nature broke up our conversation, and when I came back to the bar he was talking on the phone. &quot;… Yes, love you. I just wanted you to keep on the up and up, and not make the mistakes your old man’s done. … Your dad hasn’t had a drink or anything today, honey.&quot; &quot;… No, It’s not right that he punched you. … Go get in contact with the half-way house we had talked about. &quot;, He went on like that for a few minutes. &quot;I love you. Take care.&quot;"
      T.p => T.raw "Nobrow could be a derelict in society except for deep connections. He said that he talked to a small group of people everyday. His daughter, his ex-wife, his brother…"
      T.p => T.raw "It’s the connections. We each have a few. Let them slide away only at great peril to the resident. John Donne spoke of the promontories of humanity with &quot;no man is an island.&quot; The promontories of our personal firmament are composed of these gossamer connections. The loss of one, even a tenuous and difficult connection, is grounds for sorrow. And in a troubled life, even a difficult connection is a haven."
      T.p => T.raw "When we run out of havens, what will we do? I’m glad Nobrow has safe havens for the resident of his world. He will be cheerful and connected with reality at least as long as he exchanges love with his personal support group."
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
page = new nobrow
console.log T.render page.html

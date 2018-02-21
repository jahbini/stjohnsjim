# 
class when_i_get_stubbed_i_want_to_be_a_big_ash extends stjohnsjimtemplate
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
      @post_when_i_get_stubbed_i_want_to_be_a_big_ash()
  # 
  # section post_when_i_get_stubbed_i_want_to_be_a_big_ash
  # 
  post_when_i_get_stubbed_i_want_to_be_a_big_ash: =>
    T.div "#post-when-i-get-stubbed-i-want-to-be-a-big-ash.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "When I Get Stubbed, I Want to be a Big Ash"
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
      T.p => T.raw "People used to smoke. &nbsp;Lots. &nbsp;Many still do, I’m not ag’in it. &nbsp;People are vegetarians now. &nbsp;I’m not ag’in it."
      T.p => T.raw "If butts could talk, the only way we could tell them is by the brand."
      T.hr()
      T.p => T.raw "American Spirit: I recognize my brand, my smoke, my savor. I bet it&rsquo;s from Harry."
      T.p => T.raw "American Spirit: Who&rsquo;s Stephen?"
      T.p =>
        T.raw "(Stub, Stub&hellip; Smash)"
        T.br()
        T.raw "American Spirit: Oh, my crap. That hurts. I was on fire, happy, joining with Sam, and then he just slammed me here. OMG. What a headache."
      T.p =>
        T.raw "(Stub, Stub, Stub&hellip; Grind, smash.)"
        T.br()
        T.raw "Kool: Ohhhhhh. Wheeeuuuu. That was crazy. Missy and I were enjoying the long ride down from the great feelings that Missy was feeling with Sam, and then Missy heard something, took a last drag and bam! I&rsquo;m history."
      T.p =>
        T.raw "&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash; some time later &mdash;&mdash;&mdash;&mdash;"
        T.br()
        T.raw "American Spirit, Camel, Kool, Marlboro: Look another ash! Maybe news!"
      T.p => T.raw "(Stub. Grind. Stub, stub, stub. Grind. &hellip; smash)"
      T.hr()
      T.p => T.raw "Like I say, I’m not ag’in smokers. &nbsp;Nor vegetarians. &nbsp;Ashtrays have more interesting conversations – prove me wrong."
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
page = new when_i_get_stubbed_i_want_to_be_a_big_ash
console.log T.render page.html

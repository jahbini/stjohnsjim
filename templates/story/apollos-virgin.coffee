# 
class apollos_virgin extends stjohnsjimtemplate
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
      @post_apollos_virgin()
  # 
  # section post_apollos_virgin
  # 
  post_apollos_virgin: =>
    T.div "#post-apollos-virgin.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Apollo's Virgin"
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
      T.blockquote ".right.key-author.right-align.h6.p2.bg-white.bg-darken-1.border.rounded", => T.raw "My friend Southwick says he channeled this from the Akashic Records – I think it has a message for our times in here somewhere."
      T.p =>
        T.span ".FBname", => T.raw "Friend"
        T.raw ", I am Amenea, I am the seer of the Temple of Apollo in a town three days ride from Thebes. I have devoted my existence to Apollo since my parents were cursed. They had sickness and poverty and cruel masters."
      T.p => T.raw "With my sacrifice to the temple, Apollo gave them release: Afterwards, they flourished as traders, surely that is the mark of the approval of Apollo. They have been steadfast in their offerings to my temple."
      T.p => T.raw "I had been a temple virgin for many years. I thank Apollo for restoring my innocence 1000 times and more. Apollo requires great sacrifice on the part of the adherents, you know. That is proper. Apollo has seen fit to allow me to open my womb to four new souls, although only two survive. These grace-filled two are steadfast in their observation of Apollo’s rules. They are both carrying on Apollo’s work in the land beyond the highest mountains of Persia."
      T.p =>
        T.raw "For you,"
        T.span ".FBname", => T.raw "Friend"
        T.raw ", my trusted friend, you need to know this –"
      T.p => T.raw "I have been the high priestess here for the last 15 years. I have earned my position only by the total surrender to Apollo. For the first time 200 years, this temple has a high priestess that has given sight to Apollo. Yes, I have given my sight to Apollo. I have gazed into our sun. Repeatedly. I wanted to behold Apollo, and Apollo has shown me the world beyond the world. My worldly eyes are freely given to you, Apollo, for the gift of truly knowing who you are."
      T.p =>
        T.raw "The hours of pain and the days of darkness have only allowed me to see more clearly: I have received the answer to many of the questions that prevented me from allowing the true nature of reality to be known. I would want you,"
        T.span ".FBname", => T.raw "Friend"
        T.raw ", to know that before we proceed."
      T.p => T.raw "I have not done this under duress. I freely give myself to the greater good that Apollo has offered me in return."
      T.p => T.raw "I am writing you at Apollo’s great strength, in June, when the rays are most potent with this most potent opportunity: One of Apollo’s supporters with your same surname has died recently in our temple and his entire holdings are, at this moment: 3500 goats, 5300 cattle, 15,000 cubits of grain and 1450 hectares of fertile river bottom land, which only 350 hectares is ever flooded."
      T.p => T.raw "Alas, his entire estate is waiting for someone to claim it. I appeal to you as someone with the same surname to allow the wisdom of Apollo to fill your days and lives to come forward and claim your prize."
      T.p => T.raw "Since I am sightless, I would wish you to declare your intentions to carry through the good work of our righteousness and strength: Apollo."
      T.p => T.raw "Please reply by sending your replies to htttp://I am so gullible.com/"
      T.p => T.raw "Strength and Light given to you my friend in bliss."
      T.p => T.raw "Amenea"
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
page = new apollos_virgin
console.log T.render page.html

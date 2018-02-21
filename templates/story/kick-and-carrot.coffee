# 
class kick_and_carrot extends stjohnsjimtemplate
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
      @post_kick_and_carrot()
  # 
  # section post_kick_and_carrot
  # 
  post_kick_and_carrot: =>
    T.div "#post-kick-and-carrot.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Kick and Carrot"
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
      T.p => T.raw "The trick or treat parade of last week reminded me of this academic trick or treat:"
      T.p => T.raw "I’ve been thinking about starting back my class-load at an on-line university.  I teach web technology via the internet.  Fabulous.  We are just learning how to do that, and the technology is improving daily.  Still, it has defects of it’s own, as well as the defects in any educational system.  One defect is a real pain for me."
      T.p => T.raw "By far, It’s the least fun I can imagine having while teaching."
      T.p => T.raw "This defect, academic cheating, is a heart breaker for the teacher as well as the student.  Getting the documentation trail together from an on-line class is pretty easy, and the on-line plagiarism detector is near perfect…  but it’s still a nightmare.   Evaluating the written word is easy, but evaluating a computer program is dang-nigh impossible.  I had one woman who sent in an OK kind of &quot;B&quot; work but a subdirectory had an invisible file attached that pointed to &quot;bought&quot; work."
      T.p => T.raw "She was a young woman who really wanted to go ahead with her life, but she was as lost in mastering the any aspect of technology (Directories?  What’s that?) – Just not her strongpoint.  And you can’t buy your way into competence.  Incompetence has a smell that can’t be disguised to the trained nose."
      T.p => T.raw "Another student had taken a whole group project on him self.  His work was excellent.  But he had worked so much on that project that his other work was so fraudulent that it pulled his grade to D quality.  The work was great, the plagiarism was not."
      T.p => T.raw "I had to report the offense, as the team captain was aware too.  I knew a letter would be placed in his file, and if he had other offenses, more…"
      T.p => T.raw "I felt that this guy needed both a carrot as well as a kick.  The low mark on the project and the &quot;visit to the principals&quot; office."
      T.p => T.raw "In this case, I did not find out until after the grades were issued that he alone had done the heavy lifting on a project that was, quite frankly, a blockbuster powerpoint presentation.  So, I sent in a petition to raise that guy’s grade a whole letter.  His grade was raised, and I hope he has continued the good work."
      T.p => T.raw "The kick and the carrot.  His scholarship depended on that, in this economy, his error did not require a more severe a punishment."
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
page = new kick_and_carrot
console.log T.render page.html

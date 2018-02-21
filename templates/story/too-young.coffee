# 
class too_young extends stjohnsjimtemplate
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
      @post_too_young()
  # 
  # section post_too_young
  # 
  post_too_young: =>
    T.div "#post-too-young.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Too Young?"
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
      T.p => T.raw "I saw a performance by a Jackie Evancho, a truly gifted child with a fabulous voice. It is the kind of voice that inspires any well-connected agent to call God directly and schedule her try-out for the voice that announces the Second Coming of Christ. In song, she carries the Gravitas of Morgan Freeman, The World-Wise qualities of Nelson Mandela and the resonance of Kate Smith. She is equally at ease in duets with Barbra Streisand or Susan Boyle."
      T.p => T.raw "Like I said, fabulous. But with an odd hitch. Watching her sing weirded me out. Not just me, a couple of other people mentioned the same thing. Why should excellence be weird?"
      T.p => T.raw "My guess is that it had to do with her child like nature. A kid is not supposed to know all about the emotional depths of intense life and death romantic love that is needed to understand Bernstein&rsquo;s &ldquo;There&rsquo;s a Place for Us.&rdquo; But this kid conveyed that emotion perfectly."
      T.p => T.raw "Close your eyes, you would swear that this soul had swam in hormone hurricane churned seas &mdash; slammed against the sad rocks of society&rsquo;s expectations &mdash; and finally accepts the doom of Romeo and Juliet."
      T.p => T.raw "Open your eyes, and you see a body that should be singing &ldquo;I love Barney,&rdquo; or &ldquo;Sharing is Fun.&rdquo;"
      T.p => T.raw "In the same way that &ldquo;Little Miss Sunshine&rdquo; pointed out the creepy nature of Pre-pubescent Beauty Queens, this young lady has poked a similar button. But she has done nothing wrong, and is just expressing her gifts as a performer and a human being. Like &ldquo;Little Miss Sunshine&rdquo; herself &mdash; simply a little girl with a dream and some inspired coaching, she is reaching for a goal that inspires her. The abreaction is mine alone, It is me."
      T.p => T.raw "It&rsquo;s MY expectation of human development that gets punched in the nose by the &ldquo;fist of perhaps.&rdquo; &mdash; either children have a greater emotional capacity than I know, or that she is simply a capable performer who can &ldquo;fake&rdquo; the emotions with expert ease. An actor does that for breakfast, lunch and dinner, why not a little girl? After all, it&rsquo;s just a performance."
      T.p => T.raw "Obviously, the answer is both."
      T.p => T.raw "But if she sings The Kink&rsquo;s &ldquo;Lola&rdquo; with equal passion, I am running for cover! Lord save us all."
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
page = new too_young
console.log T.render page.html

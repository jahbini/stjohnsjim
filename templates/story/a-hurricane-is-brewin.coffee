# 
class a_hurricane_is_brewin extends stjohnsjimtemplate
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
      @post_a_hurricane_is_brewin()
  # 
  # section post_a_hurricane_is_brewin
  # 
  post_a_hurricane_is_brewin: =>
    T.div "#post-a-hurricane-is-brewin.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "A Hurricane is Brewin"
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
      @intruder_alert_()
      T.p =>
        T.raw "Hurricane Visionary demolished my fortress of solitude today.  It is slowly being re-built.  Visionary, it seems, is planning a whopping art show in a few days at the North End Gallery.  He descended onto stage cool-zero with sweeping glances into the very corners of the hall.  Nothing escaped his glance and inclusion into a grand plan:  A true"
        T.a href: "http://en.wikipedia.org/wiki/Impresario", => T.raw "impresario"
        T.raw ".  Planning what will be a great production.  I have been blessed.   Be there!"
      T.p => T.raw "And now silence has re-entered the fortress — We may begin:"
      T.p => T.raw "Bar Bets:  Here’s the thing about bar bets.  They are conversation starters.  You are supposed to pay for the conversation.  That’s what a bar bet is all about.  So when I went to the Palate of Plew’s Brews and saw a micro-brew with the work ‘merkin’ in the name, I knew I had struck ‘bar bet’ heaven.  A merkin is a pretty odd and disgusting thing.  I can’t think of a reason why someone would ever need a wig for pubic hair."
      T.p => T.raw "Me: I’ll bet that no one here knows what the word ‘merkin’ means.  Buy me a beer and I’ll tell you."
      T.p => T.raw "Them:  Oh, no… Let’s look it up on the internet.  There’s a hurricane a-brewin with our appetite for information."
      T.p => T.raw "All the cell phones come out, Great God Google downsizes Jim’s once in a lifetime bar-bet and 30 seconds later:  They all groan: “Yuch, that’s disgusting”"
      T.p => T.raw "Now everybody in the bar is now chatting amiably about the fact that merkin refers to a wig for pubic hair.  Ha ha.  I am not sure about the wisdom of having a brew called ‘merkin’, but it gives you the opportunity to say “Gimme a firkin of merkin” which would be a cask of 72 pints of the brew."
      T.p =>
        T.raw "The upshot of this?"
        T.span ".FBname", => T.raw "Friend"
        T.raw ", if you and I met more often here, they’d have a nicer clientele.  Show me your best bar bet, OK?"
      T.p =>
        T.raw "I have just been handed a Late Breaking Flash!   The"
        T.a href: "http://medical-dictionary.thefreedictionary.com/Satvik", => T.raw "Satvik"
        T.raw "Angel’s are coming to nest at the"
        T.a href: "http://nwresourcecenter.com/", => T.raw "NW Resource Center"
        T.raw "on Lombard: They are announcing “Free at Three” — Every Friday at 3PM till it’s gone, these angels will have delicious, nourishing home cooked free food for anyone."
      T.p =>
        T.raw "Just remember these words: Everyone.  Free at Three.  Friday."
        T.a href: "http://nwresourcecenter.com/", => T.raw "Resource Center"
        T.raw "."
      T.p =>
        T.raw "Why? Why! There’s a Hurricane a-brewin’ and these Earth Angels are"
        T.a href: "http://www.library.yale.edu/~llicense/forcegen.shtml", => T.raw "Major"
        T.raw "!"
  # 
  # section intruder_alert_
  # 
  intruder_alert_: =>
    T.h2 "#intruder-alert-", => T.raw "Intruder Alert!"
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
page = new a_hurricane_is_brewin
console.log T.render page.html

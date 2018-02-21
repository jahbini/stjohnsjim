# 
class xii_the_hanged_man extends stjohnsjimtemplate
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
      @post_xii_the_hanged_man()
  # 
  # section post_xii_the_hanged_man
  # 
  post_xii_the_hanged_man: =>
    T.div "#post-xii-the-hanged-man.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "XII - The Hanged Man"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/tarot/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p => T.raw "I walked down the hill to the water flowing below. I was thirsty and this was the freshest water around. Certified by the government, you know. The closest good water to here is 5 days walk south, and it does not taste as good as this. Soon this river will join the sea and it will be worthless. Best to drink it here."
      T.p => T.raw "The old bridge is still there. It can still be used, but we don’t need to have trucks carrying things around anymore. Just like grand central station. We just don’t ride trains anymore, but we still keep it up and working. There are other, better ways to get most things around. And it’s the same with the bridge. Very few trucks, but we use it just enough to keep it up and in perfect condition. People just walk more now. We figured it was better than cars which burned fuel. Bad for the planet. Better to keep it going. Technology helps, like the weekly contact machines."
      T.p => T.raw "Anyway, as I got to the bottom near the bridge supports, I heard a shout from above, a cry actually, but one of joy rather than terror or pain. When I look up I see an old man falling head first with a cord tied on his foot. He is bungee jumping. I have heard of it, but never seen anyone do it anymore. It used to be in vogue, but now is very rare. He bounces up and down a few times and I climbed up the support a ways to better talk with him as his bouncing slowed and he just hung there for a while."
      T.p => T.raw "Hi, who are you?"
      T.p => T.raw "I’m Jake, You might know me as the Hanged Man. I’ve used that nickname for ever. When we thought bungee jumping would be big, real big, we all had nicknames. There are very few of us anymore, and really spread out. I still do it though. I’ve got a whole robotic outfit that tests the system, deploys and retrieves the load (that’s me) all under my control. It’s totally rad."
      T.p => T.raw "I asked him if it hurt to have the blood in his head."
      T.p => T.raw "Yea, so what. It what I do. My system is better at handling it than others, and so, it gives me the most fun, with the least pain. For me."
      T.p => T.raw "So, Jake, you endure this painful, solitary thing, and you do this from choice, and because of the rush of joy it seems to give you? And you are happy with that choice?"
      T.p => T.raw "Oh, yes, what a fool you are, don’t you know we must be happy with our choice? Even if it is the “wrong” one. If we have made a choice and REALLY chosen, we must learn to be happy from the consequence of that choice. And when you realize that, you will have realized this important truth. Choose wisely, choose randomly, but choose, or you are hung between the past and the future. And learn to love what you get. Your life can’t really be YOUR show, until you make choices. Then learn to love the results. In fact, the more life choices you make, the better you are at making them."
      T.p => T.raw "If you don’t find love in the results, then you have not learned this important lesson, have you?"
      T.p => T.raw "He slowly moved up as his robotic gear came to life high above us. I moved back down the slopes to get that fresh, fresh water. It was 3 days more before the next contact was due. So I’m going to make the most of the 3 days left before I make my next transfer. I’m sure what he said is true, and I will love the three days I have here to think about it."
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
page = new xii_the_hanged_man
console.log T.render page.html

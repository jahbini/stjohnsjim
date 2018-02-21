# 
class contact_machines_and_the_world_of_the_tarot extends stjohnsjimtemplate
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
      @post_contact_machines_and_the_world_of_the_tarot()
  # 
  # section post_contact_machines_and_the_world_of_the_tarot
  # 
  post_contact_machines_and_the_world_of_the_tarot: =>
    T.div "#post-contact-machines-and-the-world-of-the-tarot.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Contact Machines and the World of the Tarot"
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
      T.p => T.raw "Our tarot world seems very different than our real world –"
      T.p => T.raw "Things are different at the world in tune with Celarien, and have resolved out of necessity. The meek inherited the earth, it seems."
      T.p => T.raw "All the old companies are there, but they mostly do different things now than before, now that we built machines that could jump us through space. Contact machines."
      T.p => T.raw "About once a week we can move anything anywhere, and go anyplace, and arrive now. Well, now, at least on this earth. Longer distances don’t work yet, but the scientists are working on that. If you jump too far, you land sideways because of the gravity, and so we usually go to hub stations. They have the proper, most comfortable services."
      T.p => T.raw "The money problem went away because we really didn’t need to see it as a problem. People are encouraged to find a bliss in accordance with humanity, and to pursue it with abandon. Because that makes life better for everyone."
      T.p => T.raw "The goal of everyone here is to be confident, competent and prosperous in being true to who they really are."
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
page = new contact_machines_and_the_world_of_the_tarot
console.log T.render page.html

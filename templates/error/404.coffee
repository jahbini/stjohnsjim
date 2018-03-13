# #-------- class start
class  index extends stjohnsjimtemplate
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
      @post_index()
  # 
  # section post_index
  # 
  post_index: =>
    T.div "#post-index.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Grand Visions from the 'Puter of St. John's Jim"
          @bloviation()
        T.div ".article-footer.hide", =>
          T.a ".article-share-link", "data-url": "http://localhost:3030/stjohnsjim/-/undefined", "data-id": "cik30i1ai005w88ohxnylw27q", => T.raw "Share"
          T.ul ".article-tag-list", =>
            T.li ".article-tag-list-item", =>
              T.a ".article-tag-list-link", href: "/tags/story/", => T.raw "bobo-bado story"
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.article-entry.contents", =>
      T.raw "Sorry, that does not exist...   Yet."
      T.a href: "/announcement/two-years-with-bamboo-snow.html", => T.raw " but check out an incredible life with Bamboo Snow."
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
page = new index
rendered =  T.render page.html
# ------- db start
db = {} unless db



db[id="stjohnsjimerror404"] =
  title: "404"
  slug: "404"
  category: "error"
  site: "59781236d3cfff7cc5f92609"
  accepted: true
  index: false
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2018-03-05T04:46:19.903Z"
  lastEdited: "2018-03-05T04:46:19.904Z"
  published: "2018-03-05T04:46:19.904Z"
  embargo: "2018-03-05T04:46:19.904Z"
  captureDate: "2018-03-05T04:46:19.904Z"
  TimeStamp: 1520225179904
  debug: ""
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  id: "stjohnsjimerror404"
  name: "404"
#
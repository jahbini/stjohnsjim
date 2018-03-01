# #-------- class start
class  rainy_september_sunday extends stjohnsjimtemplate
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
      @post_rainy_september_sunday()
  # 
  # section post_rainy_september_sunday
  # 
  post_rainy_september_sunday: =>
    T.div "#post-rainy-september-sunday.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "Rainy September Sunday"
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
      T.p => T.raw "(Jim’s note: &nbsp;I got a big backlog of stories, and hope to get this distribution thing working with as few surprises as possible. &nbsp;Thanks for your patience as I get all the subscribe/unsubscribe HTML links in place and under control)"
      T.p => T.raw "Yesterday was warm and bright and humid.&nbsp; As the afternoon sun mellowed a bit, the light filtering through the trees brought out the tiny zits on the face of our sweet nature pentacle goddess: Portland.&nbsp; Nature, for all her beauty, is intimate with a few ookie things that we rather ignore."
      T.p => T.raw "Not yesterday:&nbsp; The bugs were everywhere.&nbsp; Tiny midges thick in air of the avenues.&nbsp; When the sun dims behind a cloud, the midges magically disappear: I breath easier, then I realize the flies are still there, and each breath is likely sucking in three or four of these protein filled vermin.&nbsp; So what do I do about it?&nbsp; Continue walking.&nbsp; Get to Storybook Theatre before Happy Hour ends and find a great story to write.&nbsp; In fact, a King of Pentacles shared his secret with me, but that’s another story."
      T.p => T.raw "That was yesterday.&nbsp; This is today, and this story is about ookie midges.&nbsp; And their fate.&nbsp; Nature knows it takes ookie to fight ookie, and the midge’s ookiest predator is the spider."
      T.p =>
        T.raw "I’m walking into St. John’s in the rain.&nbsp; Rain freshens the air, washes the streets and spatters droplets onto the webs, making them as visible as the midges were yesterday.&nbsp; One proud spider, as plump as a Belgian Burgher, has imagineered a web that seems to support its bamboo thicket, rather than the other way around.&nbsp; Tiny drops on the web make like lighthouses for the midges’ radar:"
        T.em => T.raw "&quot;Breaker, Breaker, this is garbage-guy-23, be advised of a spider web two clicks NorthWest of the mildewed dog poop.&nbsp; That is all.&quot;"
      T.p => T.raw "The droplets on the webs are as tiny and shiny as the bugs were tiny and black.&nbsp; Sparkling with the sun behind, but nearly invisible from the other side.&nbsp; If I were walking in the other direction, there would be no visible droplets, no visible webs.&nbsp; As the sun dries the webs and brings out the midges, the spiders will make a killing, as they say in Pentacle Town."
      T.p => T.raw "It’s like that with stories.&nbsp; You have to look at the day as if you were several people at once.&nbsp; From all angles of perception and emotionality.&nbsp; And then bring out the highlights of the moments.&nbsp; Some are ookie.&nbsp; Some are hilariously ookie."
      T.p => T.raw "I walk along a bit further, and spot Southwick coming out of his place on 3 Gunas Loop.&nbsp; He says hi, and we talk a bit as we walk.&nbsp; Southwick wants to get away from his roommates for a while: it seems that his room-mate Tommy is out to erase his recent lady problems by using monetary negotiation as an aid to seduction.&nbsp; Tommy told Southwick to get showered up and the very friendly lady was going to arrive soon and take on the world for a bit of help with her house payment."
      T.p => T.raw "Southwick tells me that he is kind of appalled at the idea, but Tommy has the morals of, well, um. Er. &nbsp; Actually Southwick has no idea of the depths that Tommy’s morals go.&nbsp; Can’t be lower than the urges and actions of our midges and spiders, can it?&nbsp; And well, we do things for lots of reasons."
      T.p =>
        T.raw "It took Southwick a few minutes to come up with the most outrageous answer to Tommy, one that takes a tiny dig at Tommy’s manhood:&nbsp; &quot;"
        T.em => T.raw "If I have to get washed up, she’s not the kind of woman I want to be with"
        T.raw "&quot; –&nbsp; Nature knows it takes ookie to fight ookie.&nbsp; &nbsp;"
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
page = new rainy_september_sunday
rendered =  T.render page.html
# ------- db start
db = {} unless db
db[id="59782449d3cfff7cc5f92656"] =
  title: "Rainy September Sunday"
  slug: "rainy-september-sunday"
  category: "story"
  site: "59781236d3cfff7cc5f92609"
  accepted: true
  index: false
  sourcePath: "stjohnsjim/contents/story/rainy-september-sunday.md"
  headlines: []
  tags: []
  snippets: "{}"
  memberOf: [
    "GUNAS"
    "TAROT"
  ]
  created: "2010-09-26T13:55:40.000Z"
  lastEdited: "2010-10-24T10:47:53.000Z"
  published: "2010-10-24T10:47:53.000Z"
  embargo: "2017-12-31T23:59:59.000Z"
  captureDate: "2017-07-26T05:10:33.287Z"
  TimeStamp: "1501045833287"
  author: ""
  debug: ""
  id: "59782449d3cfff7cc5f92656"
  name: "Rainy September Sunday"
#
# #-------- class start
class  the_fool extends stjohnsjimtemplate
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
      @post_the_fool()
  # 
  # section post_the_fool
  # 
  post_the_fool: =>
    T.div "#post-the-fool.article.article-type-post", itemscope: "itemscope", itemprop: "blogPost", =>
      T.div ".article-inner.pb2", =>
        T.div ".article-header", =>
          T.h1 ".article-title", itemprop: "name", => T.raw "The Fool"
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
      T.p => T.raw "ZZZZ–POP! The fool appears. He has a look of surprise and confusion as he sets his {{{Dizzy:dog}}}, down. The pup races around, sniffs nearly everything and dances happily around his feet."
      T.p => T.raw "“What was that? Oh, yeah, the {{{Contact:contact machines}}}. They always spin me around when I use them. Kind of makes me feel like I have two left feet. Where is this anyway? Sure different here. What a pretty flower.”"
      T.p => T.raw "He sits on an old log. He takes a moment to go through his belongings: the sword of confidence, the wand of capability, the pentacle of prosperity and the cup of integrity. His dog, Dizzy, sniffs his boots. He continues: “I think I like this place. Hey Dizzy, I’m tired of thinking, anyway, and you sure like it here. And that’s just fine.”"
      T.p => T.raw "I’m here to find my way, learn new things. If there is anything important, Dizzy, we will know it. And then I don’t have to think about it anymore. Maybe I can teach it to you."
      T.p => T.raw "Hmm. Can I teach a dog? I can’t teach dogs things like that! That’s foolish."
      T.p =>
        T.raw "Yes, well, that’s who I am, and you"
        T.em => T.raw "can"
        T.raw "teach dogs all sorts of things. And Dizzy, isn’t your basic childhood dog, your real name is Discernment of the Highest Good. At least thats what I was told. I call you Discernment, or mostly, just Dizzy. You are, well, a second body for me. Like a cup waiting for me at nightfall. And I will fill the cup, and we will move on as one again."
      T.p => T.raw "And the pup replied “Hey buddy, are you on crack? You make no sense at all.”"
      T.p => T.raw "No, I’m the fool, and I do make sense, in fact, I only make sense, and let you do the thinking part. Did you know I used to have a monkey? It thought all the time and figured it was in charge, so I traded my monkey for you, Discernment. I lost my mind and came to my senses. Later on, I’ll teach you that you really are not a dog, but right now, it works out just fine."
      T.p => T.raw "And the dog replied: “I’m not a real dog? What the… That’s what I get for talking to a fool. And not just any fool, This Fool of all Fools. I better watch this guy pretty closely, or we will both be killed.”"
      T.p => T.raw "Hey, wait, Dizzy, where are you going? You’ll get us lost, oh, look, what a good dog, you found a path. Let’s go see what is just ahead…"
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
page = new the_fool
rendered =  T.render page.html
# ------- db start
db = {} unless db


db[id="5978244ad3cfff7cc5f9269b"] =
  title: "The Fool"
  slug: "the-fool"
  category: "tarot"
  site: "59781236d3cfff7cc5f92609"
  accepted: true
  index: false
  headlines: []
  tags: []
  snippets: "{\"dizzy\":\"dizzy\",\"contact\":\"contact\"}"
  memberOf: [
    "TAROT"
  ]
  created: "2011-08-30T14:06:31.000Z"
  lastEdited: "2011-08-30T14:55:31.000Z"
  published: "2011-08-30T14:55:31.000Z"
  embargo: "2017-12-31T23:59:59.000Z"
  captureDate: "2017-07-26T05:10:34.145Z"
  TimeStamp: "1501045834145"
  author: "Copyright 2010-2018 James A. Hinds: St. John's Jim -- King of Cascadia"
  debug: ""
  id: "5978244ad3cfff7cc5f9269b"
  name: "The Fool"
#
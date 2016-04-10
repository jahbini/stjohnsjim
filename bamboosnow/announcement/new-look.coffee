
{pre,render,doctype,html,title,meta,base,link,script,body,header,raw,section,p,text,em,ul,li,strong,
 comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,nav,form,input,button,aside,br,
 time,tag,article,footer} = require "teacup"
obj =
  debug: ""
  title: 'New Look!'
  slug: 'new-look'
  created: '2016-04-08'
  lastEdited: '2016-04-06'
  published: '2016-04-06'
  embargo: '2016-04-06'
  category: "announcement"
  className: "Story"
  headlines: [ "New Presses Roll on St John's Jim Stories!", "Stories of The Bizarre and Normal: Portland, Saipan and elsewhere" ]
  content: ""
  final: render (story) ->
    h2 "wowzers!"
    p ".circle.border", ->
      raw """
I'm writing this new article without a wysiwig editor: I'm going primitive!
Everything is now in
   """
      span ".px1.fa.fa-coffee", " Coffeescript."

    p """
It's kind of like building my own printing press out of electrons and software.
The big hope is that with the fine control over each pixel on your screen will make
me become a geek-star.
   """
    aside ".border.rounded.bg-silver.h4.no-column-break", ->
      pre ".h6",-> '''
        p ".circle.border", ->
          raw """
I'm writing this new article without a wysiwig editor: I'm going primitive!
Everything is now in
       """
          span ".px1.fa.fa-coffee", " Coffeescript."
    '''
      p "I promise that's the last of Coffeescript you will see on these pages -\
Otherwise, lets keep it a secret."
    div ".siteInvitation"
    p """
    Actually, I do hope to revitalize these stories with new looks to introduce the intertwined nature
    of the stories: How the Daough sisters contrast with the Yucks over in Tommy, OR.  Read on!
   """
    aside """
   Baby Steps
   """
module.exports = obj

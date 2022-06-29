#
# crd component
#
bGet= (object,key)->  # get data from Backbone object or simple object
  return object.get key if object.attributes?
  return object[key]
  
HalvallaExpandable = T.bless class expandableComponent extends T.Component
  view: (expandable)=>  # T.render =>
    @cards=expandable.cards  # a collection of objects with header and body
    classes = expandable.className?.replace /\s/g,'.'
    classes = '' unless classes?
    T.div "##{expandable.id}.#{classes}.c-card.c-card--accordion",=>
      for card in @cards
        console.log 'card=',card
        T.button ".c-card__control",role:"heading", ariaExpanded:"false",onclick:"this.setAttribute('aria-expanded', 'false' == this.getAttribute('aria-expanded'))? 'true' : 'false';", bGet card,"headline"
        T.section ".c-card__item.c-card__item--pane", bGet card,"elements" #
        undefined
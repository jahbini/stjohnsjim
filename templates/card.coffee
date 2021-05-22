#
# crd component
#
HalvallaCard = T.bless class cardComponent extends T.Component
  view: (card)=>  # T.render =>
    @image =card.image
    @shadow=card.shadow || ''
    @headerText = card.headerText || ''
    @subHeaderText = card.subHeaderText || ''
    @headerStyle = card.headerStyle
    @footerStyle = card.footerStyle
    @divider = card.headerDivider
    @footerItems = card.footerItems || []
    @text = card.text || card.content || ""
    @footerText = card.footerText
    classes = card.className?.replace /\s/g,'.'   # change space delimiters with dot .
    classes = '' unless classes?
    T.div "##{card.id}.#{@shadow}.#{classes}.card.bg-transparent",=>
      T.img ".card-image-top", src: @image if @image
      if @headerText || @subHeaderText 
        T.header ".card-header",=>
          T.h2 ".card-title",=>
            T.raw @headerText
            T.div ".card-subtitle.text-muted", @subHeaderText if @subHeaderText
      T.div ".card-body.#{card.header.style}" if @divider && ( @headerText || @subHeaderText)
      T.div ".card-body", =>
        T.div ".m1.bg-darken-1" ,@text
        #@children
      T.div ".card-item.#{card.footer.style}" if @divider && ( @footerText || @footerItems.length >0 )
      T.footer ".card-footer",=>
        T.p ".text-muted", @footerText if @footerText
        if @footerItems?.length>0
          T.div ".input-group", =>
            for b in @footerItems
              activity = '' + (b.active && 'c-button-active')
              style = "btn-" + (b.style ||  '')
              T.button ".btn.btn-group.#{activity}#{style}"

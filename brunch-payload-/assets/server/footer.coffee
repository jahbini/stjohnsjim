###
###

T = require "halvalla"

module.exports = T.bless class FootFesh extends T.Component
    
  view: ()=>
    T.tag 'foot', "#footer", ->
      T.div ".outer", ->
        T.div "#footer-info.inner", ->
          T.text " © 2016 James A. Hinds"
          T.br()
          T.text " Powered by "
          T.a href: "https://github.com/jahbini/site-master", target: "_blank", "Site Master"
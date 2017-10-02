React = require 'react'
T = require "teact"

module.exports = T.bless class HeaderLogoNav extends React.Component
  constructor: (props)->
    super()
    @props= props
    @
    
  render: ()=>
    T.footer "#footer", ->
      T.div ".outer", ->
        T.div "#footer-info.inner", ->
          T.text " © 2016 James A. Hinds"
          T.br()
          T.text " Powered by "
          T.a href: "https://github.com/jahbini/site-master", target: "_blank", "Site Master"
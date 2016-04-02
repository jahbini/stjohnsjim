###
styling: "Lookand Feel"

###
{render,doctype,html,title,meta,base,link,script,body,header,raw,section,
 comment,div,a,span,h1,h2,h3,h4,h5,h6,head,renderable,blockquote,
 tag,footer} = require "teacup"
path = require 'path'
Backbone = require 'backbone'
fs = require 'fs'
ClassLookAndFeel = require path.resolve './lib/layouts/default'

module.exports = class BamboosnowLook extends ClassLookAndFeel

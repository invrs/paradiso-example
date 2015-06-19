Paradiso = require "paradiso"
mithril  = require "mithril"
routes   = require "./routes.coffee"

mithril.route.mode = "pathname"

new Paradiso({ mithril }).routes(routes)

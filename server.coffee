Paradiso = require "paradiso"

iso = new Paradiso
  express: require "express"
  mithril: require "mithril"

iso.routes require "./routes"

iso.server.app.listen 9000

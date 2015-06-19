Paradiso = require "paradiso"
express  = require "express"
mithril  = require "mithril"
routes   = require "./routes"

iso = new Paradiso({ express, mithril }).routes(routes)
app = iso.server.express

app.use express.static "dist"
app.listen 9000

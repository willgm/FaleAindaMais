express = require "express"
path = require "path"
favicon = require "static-favicon"
logger = require "morgan"
cookieParser = require "cookie-parser"
session = require "express-session"
load = require "express-load"
bodyParser = require "body-parser"
methodOverride = require "method-override"
http = require "http"
mongo = require 'mongoose'
compress = require 'compression'
redisman = require './redisman'

KEY = 'cdz'
SECRET = 'por atena!'

cookie = cookieParser SECRET
sessionStore = redisman.createSessionStore session
mongoUri = process.env.MONGOLAB_URI or process.env.MONGOHQ_URL or 'mongodb://localhost/falemais'
port = process.env.PORT || 5000

app = express()
app.use compress()
app.set "views", path.join __dirname, "views"
app.set "view engine", "jade"
app.use favicon()
app.use logger "dev"
app.use bodyParser.json()
app.use bodyParser.urlencoded()
app.use cookie
app.use session secret: SECRET, key: KEY, store: sessionStore
app.use express.static path.join __dirname, "public"
app.use methodOverride()
server = http.createServer app

app.db = mongo.connect mongoUri

load 'middleware'
    .then 'models'
    .then 'controllers'
    .then 'routes'
    .into app

app.middleware.errors()

server.listen port, ->
    console.log "Running at #{port}"

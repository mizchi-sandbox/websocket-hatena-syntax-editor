express = require 'express'

app = express.createServer()
app.register '.coffee', require('coffeekup')
RedisStore = require('connect-redis')(express)

app.configure ()->
  # session
  app.use express.cookieParser()
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'coffee'
  # rooting
  app.use express.methodOverride()
  app.use express.bodyParser()
  app.use app.router
  app.use express.static(__dirname + '/static')
  app.use express.favicon()

app.configure 'development', ()->
  app.use express.errorHandler({ dumpExceptions: true, showStack: true })

exports.app = app

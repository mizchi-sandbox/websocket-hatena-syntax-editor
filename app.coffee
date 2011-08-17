fs = require 'fs'
path = require 'path'
util  = require('util')
spawn = require('child_process').spawn
exec = require('child_process').exec

# express setting
app = require('./expressed.coffee').app
port = process.argv[2]
app.listen port

Hatena = require("./text-hatena0-2.js").Hatena
h = new Hatena()

# ========= socket ===========
io = require("socket.io").listen(app)
io.sockets.on "connection", (socket) ->
  socket.emit "msg", "connection established"
  socket.on "source", (data) ->
    console.log data
    h.parse data
    socket.emit 'compile', "compiled:#{h.html()}"
  socket.on "update", (data) ->
    exec "perl lib/hatena-update.py update \"#{data}\"",(e,stdout,stderr)->
      socket.emit 'msg', 'update done!'
  socket.on 'disconnect', ->
    socket.emit 'disconnect', 'disconnected!'


# ====== URL Map ========
app.get '/', (req, res)->
  res.render 'index.coffee'
    locals:
      cp_data : ''

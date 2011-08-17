div class:"container_12",->
  # header
  header class:"grid_12",->
    h1 -> a href: '/', -> 'hatena edit'
  hr class:"clear"

  # main
  div id:"left",class:"grid_6",->
    textarea
      id : "plane"
      placeholder:"update text"
      rows:"40"
      style: " width:95%; padding:10px;background-color:grey"
      readonly : "readonly"
  div id:"right",class:"grid_6",->
    p id:"msg",-> ''
    button id:"send_button",-> 'send'
    p id:"buffer",-> 'buffer'
  hr class:"clear"

  # footer
  footer class:"grid_4", ->
    p -> "copyright 2011- mizchi"
  hr class:"clear"

script src:"/socket.io/socket.io.js"

coffeescript ->
  $(document).ready ->
    $('textarea#plane').keyup ->
      source = $('textarea#plane').val()
      socket.emit 'source', source
      return true

    $('button#send_button').click ->
      socket.emit 'update',$('textarea#plane').val()

  socket = io.connect('http://localhost');

  socket.on 'msg',   (msg)->
    if msg == "connection established"
      $('p#msg').text msg
      $('textarea#plane').val("")
      $('textarea#plane').removeAttr "readonly"
      $('textarea#plane').css "background-color":"white"

    else if msg == "update done!"
      $('p#msg').text msg
      $('textarea#plane').val("")
      $('textarea#plane').attr "readonly":"readonly"
      $('textarea#plane').css "background-color":"grey"

  socket.on 'compile',   (data)->
    console.log data
    $('p#buffer').html data

  socket.on 'disconnect', ->
    $('p#msg').text 'disconnect'

style """
h1 a {
  font-family: times, Times New Roman, times-roman, georgia, serif;
	color: #444;
	margin: 0;
	padding: 0px 0px 6px 0px;
	font-size: 51px;
	line-height: 44px;
	letter-spacing: -2px;
	font-weight: bold;
  text-decoration : none;
}
div#left { background-color : wheat }
div#right { background-color : wheat }
"""

doctype 5
html ->
  head ->
    script language:"javascript",type:"text/javascript",src:"/jquery-1.6.1.min.js"
    link rel:"stylesheet",type:"text/css",href:"/reset.css"
    link rel:"stylesheet",type:"text/css",href:"/text.css"
    link rel:"stylesheet",type:"text/css",href:"/960.css"

    title 'coffee app test'
    meta charset: 'utf-8'
    meta(name: 'description', content: @description) if @description?
    link(rel: 'canonical', href: @canonical) if @canonical?

    link rel: 'icon', href: '/favicon.png'
    style '''
      header, nav, section, article, aside, footer {display: block}
      nav li {display: inline;}
      nav.sub {float: right}
    '''
  body ->
    @body


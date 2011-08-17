This is hatena syntax editor and updater.

using:
はてな記法ワープロ http://tech.nitoyon.com/javascript/application/texthatena/wordpro/

need :
    node :
        - coffee-script
        - express
        - coffeekup
        - socket.io
    python :
        - mechanize (for blog update)

exec:
$ coffee app.coffee 3000

open http://localhost:3000 (only tested Chromium 2011-8-11)

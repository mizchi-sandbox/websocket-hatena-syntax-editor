This is hatena syntax editor and updater.

using:
    hatena word processor http://tech.nitoyon.com/javascript/application/texthatena/wordpro/

need :
    node(npm) :
        - coffee-script
        - express
        - coffeekup
        - socket.io
    python :
        - mechanize (for blog update)
for update:
    edit lib/hatena-update.py for your hatena user and password

exec:
$ coffee app.coffee 3000

open http://localhost:3000 (only tested Chromium 2011-8-11)

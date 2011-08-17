#!/usr/bin/env python
# -*- encoding: euc-jp -*-
import mechanize
from sys import argv

username = 'mizchi'
password = ''

if __name__ == '__main__':
    br = mechanize.Browser()
    br.open('http://d.hatena.ne.jp/' + username)
    enc = br.encoding()
    br.follow_link(text_regex='ログイン')
    br.select_form(nr=0)
    br['name'] = username
    br['password'] = password
    br.submit()
    br.follow_link(text_regex='記事を書く')
    br.select_form(name='edit')
    text = unicode(br['body'],enc).encode('utf8')
    if argv[1] == "update":
        data = argv[2] +"\n"+ text
        br['body'] =  data
        br.submit(name='edit')
        print "done"
    elif argv[1] == "get":
        print text

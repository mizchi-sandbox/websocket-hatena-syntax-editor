require 'rubygems'
require 'hparser'

#unless filename = ARGV.shift
#      puts "usage: #{$0} [text file]"
#        exit
#end

# text = File.open(filename).read
text = ARGV.shift


parser = HParser::Parser.new
hatena = parser.parse text

puts hatena.map{|e| e.to_html}

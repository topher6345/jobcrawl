require 'nokogiri'
require 'open-uri'


puts "<html>"
puts "<head>"
puts "<link href='http://netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css' rel='stylesheet'>"
puts "<style>body { margin:30px; }</style>"
puts "</head>"
puts "<body>"
time = Time.new
puts "<h1>" + time.strftime("%a %d %B %Y %I:%M %p") + "</h1>"

require './sites/cybercoders.rb'
require './sites/startuply.rb'
require './sites/indeed.rb'
require './sites/simplyhired.rb'

puts "</body>"
puts "</html>"

# site = 'http://sfbay.craigslist.org/sof/'
# doc = Nokogiri::HTML(open(site))
# doc.css('p').css('a').each do |link|
# 	if pattern.match(link.content)	
# 		puts "<a href='" + "http://sfbay.craigslist.org" + link.attributes["href"].value + "'>" 
# 		puts  link.content
# 		puts  "</a><br />"
# 	end
# end








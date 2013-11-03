require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML::Document for the page we’re interested in...

site = 'http://www.startuply.com'

doc = Nokogiri::HTML(open(site))

# Do funky things with it using Nokogiri::XML::Node methods...


doc.css('td a').each do |link|
puts "<a href='" + site + link.attributes["href"].value + "'></a>"
end

require 'nokogiri'
require 'open-uri'

# Get a Nokogiri::HTML::Document for the page we’re interested in...

site = 'http://www.startuply.com'

doc = Nokogiri::HTML(open(site))

# Do funky things with it using Nokogiri::XML::Node methods...
# puts "<html><head></head><body>"

	doc.css('td a').each do |link|



		if link.attributes["href"].value == "javascript:;"
			puts "<br />"
		else

			if /.*ruby.*|.*developer.*|.*web.*|.*programmer.*|/i.match(link.attributes["href"].value).to_s.empty?
				# puts link.attributes["href"].value
			else
				puts "<a href='" + site + link.attributes["href"].value + "'>" + link.attributes["href"].value + "</a><br />"
			end
		end
	end

# puts "</body></html>"
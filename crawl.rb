require 'nokogiri'
require 'open-uri'


site = 'http://sfbay.craigslist.org/sof/'

doc = Nokogiri::HTML(open(site))

doc.css('p').css('a').each do |link|	
	puts "<a href='" + "http://sfbay.craigslist.org" + link.attributes["href"].value + "'>" 
	puts  link.content
	puts  "</a><br />"
end






# site = 'http://www.startuply.com'

# pattern = /.*ruby.*|.*developer.*|.*web.*|.*programmer.*|.*iOS.*|.*wordpress.*/i
# companiespattern = /companies/i
# cleanpattern = /\/Jobs\/(.*)\.aspx/i
# locationpattern = /CA|San Fransisco|San Jose|/i

# i = 1

# # For the first 10 pages
# while i < 10 do

# 	puts i.to_s + "<br />"
# 	site_options = site + '/Default.aspx?p=' + i.to_s 

# 	doc = Nokogiri::HTML(open(site_options))

# 	# For each anchor tag in the table
# 	doc.css('td a').each do |link|

# 		# Filter out all the companies
# 		if companiespattern.match(link.attributes["href"].value).to_s.empty? 

# 			# Get location 
# 			if link.attributes["href"].value != "javascript:;"
# 				if pattern.match(link.attributes["href"].value).to_s.empty?
# 				else
# 					mymatch = cleanpattern.match(link.attributes["href"].value)
# 					puts "<a href='" 
# 					puts  site 
# 					puts  link.attributes["href"].value 
# 					puts  "'>" 
# 					puts  mymatch[1] 
# 					puts  "</a><br />"
# 				end
# 			end
# 		end
# 	end
# i = i + 1
# end



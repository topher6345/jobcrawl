site = 'http://sfbay.craigslist.org/sof/'
doc = Nokogiri::HTML(open(site))
doc.css('p').css('a').each do |link|
	if pattern.match(link.content)	
		puts "<a href='" + "http://sfbay.craigslist.org" + link.attributes["href"].value + "'>" 
		puts  link.content
		puts  "</a><br />"
	end
end
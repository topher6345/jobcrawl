site = "http://www.cybercoders.com/"

puts "<div class='panel panel-default'>"
puts  "<div class='panel-heading'><h3>" + site + "</h3></div>"

puts "<table border=3px class='table'>"
puts "<thead><tr><th>Location</th><th>Position</th></thead>"
i = 1

while i < 2 
s = "http://www.cybercoders.com/search/?page=" + i.to_s + "&searchterms=ruby%20OR%20music%20OR%20guitar&searchlocation=95073&newsearch=true&sorttype="

		doc = Nokogiri::HTML(open(s))

		doc.css(".job-listing-container").css(".job-listing-item").each do |link|

			break if link.css(".job-details-container").css(".details").css(".location").first.nil?
			puts "<tr>"
				puts "<td>"
					puts link.css(".job-details-container").css(".details").css(".location").first.children.text
				puts "</td>"
				puts "<td>"
					puts "<a href='" + site
					puts link.css(".job-details-container").css(".job-title").css("a").first.attributes["href"].value
					puts "'>"
					puts link.css(".job-details-container").css(".job-title").css("a").text
					puts "</a>"
				puts "</td>"

				puts "</td>"	
			puts "</tr>"

		end
i = i + 1
end

puts "</table>"
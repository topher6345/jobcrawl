i = 1
s = "http://www.simplyhired.com"

puts "<div class='panel panel-default'>"
puts  "<div class='panel-heading'><h3>" + s + "</h3></div>"

puts "<table border=3px class='table'>"
puts "<thead><tr><th>Location</th><th>Position</th><th>Company</th></thead>"

while i < 2 do
site = "http://www.simplyhired.com/search?q=web&l=santa-cruz%2C+ca&pn=" + i.to_s
 doc = Nokogiri::HTML(open(site))

	doc.css("#jobs").css(".result").each do |link|
		puts "<tr>"
				puts "<td></td>"
				puts "<td>"
					puts "<a href='"
						puts site + link.css("h2").css("a").first.attributes["href"].value
					puts "'>"
					puts link.css("h2").css("a").children.text
				puts "</a>"
				puts "</td>"
				puts "<td>"
				puts link.css("h4").children.text
				puts "</td>"
			puts "</tr>"
	end
i = i + 1
end
puts "</table>"
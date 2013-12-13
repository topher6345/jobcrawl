s = "http://www.indeed.com/"
site = "http://www.indeed.com/jobs?q=%28iOS+or+Wordpress+or+Web+or+Ruby+or+Music+or+Guitar+or+Developer+or+Engineer+or+Coding+%29&l=95073"

doc = Nokogiri::HTML(open(site))

puts "<div class='panel panel-default'>"
puts  "<div class='panel-heading'><h3>" + s + "</h3></div>"

puts "<table border=3px class='table'>"
puts "<thead><tr><th>Location</th><th>Position</th><th>Company</th></thead>"

doc.css('#resultsCol').css(".row").each do |post|

	if post.children[1].attributes["href"]
		puts "<tr>"
		puts "<td></td>"
		puts "<td><a  href='"
		# add the link 
		puts s + post.children[1].attributes["href"].value
		puts "'>"
		puts post.css(".jobtitle").children.text
		puts "</a></td>"
		puts "<td>"
		puts post.css(".company").first.children.text + "</td>"
		# puts post.children[4].children[7].text + "<br />"
		puts "</tr>"
	else
		puts "<tr>"
		puts "<td></td>"
		puts "<td><a  href='"
		puts post.css(".jobtitle").children[1].attributes["href"].value
		puts "'>"
		puts post.css(".jobtitle").children[1].attributes["title"].value
		puts "</a></td>"
		puts "<td>"
		puts post.css(".company").first.children.text + "</td>"
		puts "</tr>"		
	end
end

puts "</table>"
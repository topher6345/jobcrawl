site = 'http://www.santacruzjobs.com/browse_jobs.shtml?sid=&action=browse_category&cat_id=26&cat_name=Tech%3A+Software+and+Databases'
s = "http://www.santacruzjobs.com/"

doc = Nokogiri::HTML(open(site))

puts "<div class='panel panel-default'>"
puts "<div class='panel-heading'><h3>" + s + "</h3></div>"
puts "<table border=3px class='table'>"
puts "<thead><tr><th>Location</th><th>Position</th><th>Company</th></thead>"


i= 0 
doc.css('#search_results').children.each do |result|

	#ignore th
	if i == 0 
		i = i + 1
		next
	end 

	#location
	location = result.children[4].children.text
	#link
	link = "http://www.santacruzjobs.com/" + result.children.children[4].attributes["href"].value
	#company 
	company = result.children[2].children.text

	#position
	position = result.children.children[4].children.text

	puts "<tr>"
	puts "<td>" + location + "</td>"
	puts "<td><a href='" + link + "'>" + position + "</a></td>"
	puts "<td>" + company + "</td>"
	puts "</tr>"

end

	puts "</table>"

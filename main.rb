require 'nokogiri'
require 'open-uri'



print <<EOF 
<html>
<head>
<link href='http://netdna.bootstrapcdn.com/bootswatch/3.0.0/flatly/bootstrap.min.css' rel='stylesheet'>
<style>body { margin:30px; }</style>
</head>
<body>
EOF

time = Time.new
puts "<h1>" + time.strftime("%a %d %B %Y %I:%M %p") + "</h1>"

require './sites/cybercoders.rb'
require './sites/startuply.rb'
require './sites/indeed.rb'
require './sites/simplyhired.rb'
require './sites/santacruzjobs.rb'

print <<EOF
</body>
</html>
EOF
ruby crawl.rb > links.html

sed -i .bak 's/javascript:;/ /g' links.html

rm links.html.bak

open links.html


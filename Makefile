.PHONY: all

all:
	cp index.js index-loaded.js
	index="`cat static/index.html`" perl -i'' -pe 's/INDEXFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/404.html`" perl -i'' -pe 's/404FILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/feitaemcasa.html`" perl -i'' -pe 's/FEITAEMCASAFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/deep.html`" perl -i'' -pe 's/DEEPFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/asciichartr.html`" perl -i'' -pe 's/ASCIICHARTRFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/awslambdarpc.html`" perl -i'' -pe 's/AWSLAMBDARPCFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/robots.txt`" perl -i'' -pe 's/ROBOTSFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat static/sitemap.xml`" perl -i'' -pe 's/SITEMAPFILE/$$ENV{"index"}/g' index-loaded.js
	sed -i '' 's/\\/\\\\/g' index-loaded.js 


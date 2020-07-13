.PHONY: all

all:
	cp index.js index-loaded.js
	index="`cat index.html`" perl -i'' -pe 's/INDEXFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat 404.html`" perl -i'' -pe 's/404FILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat feitaemcasa.html`" perl -i'' -pe 's/FEITAEMCASAFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat deep.html`" perl -i'' -pe 's/DEEPFILE/$$ENV{"index"}/g' index-loaded.js
	index="`cat asciichartr.html`" perl -i'' -pe 's/ASCIICHARTRFILE/$$ENV{"index"}/g' index-loaded.js
	sed -i '' 's/\\/\\\\/g' index-loaded.js 


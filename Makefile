compile: html style

html:
	./node_modules/.bin/jade \
	  < src/layout.jade \
	  --obj "`./node_modules/.bin/yamlmd2json < src/content.md`" \
	  > public/index.html

style:
	./node_modules/.bin/stylus \
	  src/style.styl \
	  -o public/

style-watch:
	./node_modules/.bin/stylus --watch \
	  src/style.styl \
	  -o public/

scripts:
	cat \
	  src/jquery.js \
	  src/raphael-min.js \
	  src/graph.js \
	  src/graffle.js \
	  src/script.js \
	  > ./public/script.js

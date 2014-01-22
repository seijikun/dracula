compile: html style

html:
	./node_modules/.bin/jade \
	  < src/layout.jade \
	  --obj "`./node_modules/.bin/yamlmd2json < src/content.md`" \
	  > public/index.html

style:
	./node_modules/.bin/stylus \
	  < src/style.styl \
	  > public/style.css

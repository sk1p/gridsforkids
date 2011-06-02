all: gridsforkids

install:
	@echo 'nothing to install, just run 'make' then open index.html in a browser!'

gridsforkids:
	curl -o modestmaps.js https://github.com/stamen/modestmaps-js/raw/master/modestmaps.js
	curl -o jquery-1.5.2.min.js http://code.jquery.com/jquery-1.5.2.min.js
	curl -o wax.mm.js https://github.com/mapbox/wax/raw/master/build/wax.mm.js
	curl -o generate_tiles.py http://svn.openstreetmap.org/applications/rendering/mapnik/generate_tiles.py
	patch -p0 < generate_tiles.diff
	chmod +x generate_tiles.py
	@echo 'externals fetched, run 'make tiles' to create the tiles'

tiles:
	mkdir -p tiles/1.0.0/world/
	cp layer.json tiles/1.0.0/world/
	export MAPNIK_MAP_FILE=stylesheet.xml && export MAPNIK_TILE_DIR=tiles/1.0.0/world/ && ./generate_tiles.py
	@echo 'now you can open the index.html!'

clean:
	rm -rf tiles
	rm -f generate_tiles.py jquery-1.5.2.min.js wax.mm.js modestmaps.js

test:
	open -a Safari index.html

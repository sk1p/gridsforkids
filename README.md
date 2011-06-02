# Grids for kids

An illustrative sample that shows simple usage of Wax and Mapnik's grid\_renderer output.


## Background

  The grid\_renderer targets the mbtiles spec. Learn more here:
  
    https://github.com/mapbox/mbtiles-spec/
  
  For more about the grid\_renderer:
  
    http://trac.mapnik.org/wiki/MapnikRenderers#grid_renderer


## Depends
  
  Mapnik trunk >= r 2842
  
  subversion (to checkout generate\_tiles.py)
  
  patch (to patch generate\_tiles.py)
  
  python >= 2.6 (for built in json module)
  

## Installation
  
  Install Mapnik from >= r2842. More details about installing the latest mapnik at: http://trac.mapnik.org/wiki/Mapnik2


## Setup

  Get a few external dependencies for the demo by running
  
   $ make
  

## Usage

  Then generate some tiles
  
   $ make tiles

  Then open the index.html in a web browser and you should be able to hover over polygons and get the country names.

415 Tiles
=========

415 Tiles is an open-source map designed for San Francisco bicyclists. It is a [TileMill](http://mapbox.com/tilemill/) 
project, and is the base map layer used in the [415Bike](http://415bike.com) iOS app.

The map tiles are hosted at 
[tiles.mapbox.com/sikelianos/map/415tiles](http://tiles.mapbox.com/sikelianos/map/415tiles). 
and are ready for use in your map project.

![415 Tiles Screenshot](http://f.cl.ly/items/021Q0B3B0W3Y023k201u/map_textured.jpg)

Data Sources
------------

TileMill has built-in support for [Esri shapefiles](http://en.wikipedia.org/wiki/Shapefile). Here's a list of some of the
datasets used to build the 415tile map.

- [SFGov Planning Neighborhoods](https://data.sfgov.org/Geography/Planning-Neighborhoods/qc6m-r4ih)
- [SFMTA Bicycle Route Network](https://data.sfgov.org/Transportation/SFMTA-Bicycle-Route-Network/q36i-k43q)
- [Streets of San Francisco](https://data.sfgov.org/Geography/Streets-of-San-Francisco-Zipped-Shapefile-Format-/wbm8-ratb)
- [Bay Citizen's Five-Year Bike Accident Tracker](https://www.google.com/fusiontables/DataSource?dsrcid=884639)
- [Bart and Caltrain](http://www.mtc.ca.gov/maps_and_data/GIS/data.htm)
- [Parks](https://data.sfgov.org/Parks-and-Recreation/Park-Lands-Recreation-and-Parks-Department-Zipped-/qkuk-eir7)
- [General outline of San Francisco, ocean and bay, and other counties.](https://data.sfgov.org/Geography/Bay-Area-General-Zipped-Shapefile-Format-/ye46-7n65)
- [San Francisco Shoreline](https://data.sfgov.org/Geography/San-Francisco-Shoreline-Zipped-Shapefile-Format-/kj7y-jjpu)

Tenative Additions
------------------

- [SFPD Incidents](https://data.sfgov.org/Public-Safety/Sfpd-Incident-Last-Month/tmnf-yvry)
- [SF Civic Art Collection](https://data.sfgov.org/Arts-Culture-and-Recreation-/SF-Civic-Art-Collection/zfw6-95su)
- [Water Bodies in San Francisco](https://data.sfgov.org/Geography/Water-Bodies-in-San-Francisco-Zipped-Shapefile-For/7wxv-7sn4)
- [The Presidio of San Francisco](https://data.sfgov.org/Geography/The-Presidio-of-San-Francisco-Zipped-Shapefile-For/5sny-6aph)
  

Improve it
----------

Want to play cartographer? [Download Tilemill](http://mapbox.com/tilemill/), then:

```bash
cd ~/Documents/mapbox/project/
git clone git@github.com:415bike/415tiles.git
open -a TileMill
```

License
-------

415tiles is available under the MIT license. See the LICENSE file for more info.
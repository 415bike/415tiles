415 Tiles
=========

415 Tiles is an open-source map designed for San Francisco bicyclists. It is a [TileMill](http://mapbox.com/tilemill/) 
project, and is the base map layer used in the [415Bike](http://415bike.com) iOS app.

![Bike Map Screenshot](http://f.cl.ly/items/2N113j221f053b3E2G1n/Screen%20Shot%202012-10-20%20at%206.29.02%20PM.png)

Data Sources
------------

TileMill has built-in support for [Esri shapefiles](http://en.wikipedia.org/wiki/Shapefile). Here's a list of some of the
datasets used to build the 415tile map.

- [SFGov Planning Neighborhoods](https://data.sfgov.org/Geography/Planning-Neighborhoods/qc6m-r4ih)
- [SFMTA Bicycle Route Network](https://data.sfgov.org/Transportation/SFMTA-Bicycle-Route-Network/q36i-k43q)
- [Streets of San Francisco](https://data.sfgov.org/Geography/Streets-of-San-Francisco-Zipped-Shapefile-Format-/wbm8-ratb)
- [Bay Area Transit Shapefiles](http://www.mtc.ca.gov/maps_and_data/GIS/data.htm)
- [San Francisco Shoreline](https://data.sfgov.org/Geography/San-Francisco-Shoreline-Zipped-Shapefile-Format-/kj7y-jjpu)
- [Park Lands](https://data.sfgov.org/Parks-and-Recreation/Park-Lands-Recreation-and-Parks-Department-Zipped-/qkuk-eir7)
- [Bay Citizen's Five-Year Bike Accident Tracker](https://www.google.com/fusiontables/DataSource?dsrcid=884639)

Improve it
----------

Want to play cartographer? Download and install Tilemill, then:

```bash
cd ~/Documents/mapbox/project/
git clone git@github.com:415bike/415tiles.git
open -a TileMill
```

License
-------

415tiles is available under the MIT license. See the LICENSE file for more info.
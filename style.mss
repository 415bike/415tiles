@land: #F7F7F5;
@water:#b8dee6;
@shopColor:#f45;
@shopFillColor: #813;
@streetColor: #D8D5CB;
@parkingColor: #C6C3B9;
@routeColor:#407EB5;
@parkColor: #ae8;
@textColor: #565349;
@font: "Ubuntu Regular","Arial Regular";
@fontBold: "Ubuntu Bold","Arial Bold";

Map {
  background-color: @water;
}

#hoods {
  line-opacity:0;
  polygon-opacity:0;
  ::labels {
    text-name:"[neighborho]";
    text-face-name:@fontBold;
    text-allow-overlap:true;
    text-halo-radius:3;
    text-fill: @textColor;
    [zoom < 14] { text-opacity: 0; }
	[zoom = 14] { text-size: 12; text-opacity: 0.5; }
    [zoom > 14] { text-size: 16; }
  }
}

#street-labels {
  line-opacity: 0;
  [zoom > 14] {  
    ::labels {
      text-name:"[STREET]";
      text-face-name:@font;
      text-halo-radius:3;
      text-placement: line;
      text-avoid-edges: true;
      text-min-distance: 250;
      text-fill: @textColor;
    }
  }  
}

#transit {
  marker-opacity: 0;
  marker-allow-overlap:true;
  [zoom < 13] { marker-width:4; }
  [zoom = 13] { marker-width:8; }
  [zoom = 14] { marker-width:12; }
  [zoom > 14] { marker-width:15; }
	[AGENCYNAME = 'Bay Area Rapid Transit'] {
		marker-opacity: 1;
    	marker-file: url("markers/bart.svg");
		[zoom < 14] { marker-width: 15; }
		[zoom = 14] { marker-width: 20; }
		[zoom = 15] { marker-width: 30; }
		[zoom > 15] { marker-width: 40; }
	}
	[AGENCYNAME = 'Caltrain'] {
		marker-opacity: 1;
    	marker-file: url("markers/caltrain.svg");
		[zoom < 14] { marker-width: 20; }
		[zoom = 14] { marker-width: 25; }
		[zoom = 15] { marker-width: 30; }
		[zoom > 15] { marker-width: 40; }
    	
	}
}

#bike-routes {
	
	line-color:@routeColor;
	[zoom < 14] { line-width:1;}
  	[zoom >= 14] { line-width:2; }
}

#parking {
  marker-width:5;
  marker-fill:@parkingColor;
  marker-line-color:@parkingColor;
  marker-allow-overlap:true;
  [zoom<=12] {
  	marker-width:2;
  }
}

#street-lines {
  line-width:1;
  line-color:@streetColor;
  line-opacity: 0.5;
  [zoom < 14] { line-opacity: 0; }
  [CLASSCODE = '1']{ line-opacity: 1; line-width: 3 }
  [CLASSCODE = '2']{ line-opacity: 0.6; line-width: 2 }
  [CLASSCODE = '3']{ line-opacity: 0.6; line-width: 2 }
  [CLASSCODE = '4']{ line-opacity: 0.2; }
  [CLASSCODE = '5']{ line-opacity: 0.2; }
}

#parks {
  line-color:@parkColor;
  line-width:1;
  line-opacity:0.3;
  polygon-opacity:0.2;
  polygon-fill:@parkColor;
}

#shoreline {
  line-color:@land;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@land;
}


#accidents {
    marker-width:20;
    marker-fill:#f45;
    marker-line-opacity: 0;
    marker-opacity: 0.2;
    marker-allow-overlap:true;
}

/*@landColor: #F7F7F5;*/
@landColor: #EFEBE2;
@shoreColor: #D8D5CB;
@waterColor:#b8dee6;
@parkColor: #ae8;
@parkTextColor: rgba(0, 0, 0, 0.4);
@shopColor:#f45;
@shopFillColor: #813;
@streetColor: #D8D5CB;
@parkingColor: #C6C3B9;
@routeColor:#407EB5;
@textColor: #565349;
@bikeRouteFill: #FFFFFF;
@bikeRouteStroke: #D8D5CB;

@bartColor: #009BDA;
@caltrainColor: #E31837;
  
@font: "Ubuntu Regular","Arial Regular";
@fontBold: "Ubuntu Bold","Arial Bold";

Map {
  background-image: url("markers/texture.jpg");
}

#transit {
  marker-opacity: 0;
  marker-allow-overlap:true;
	marker-line-opacity: 0;
  [zoom <= 14] { 
    [AGENCYNAME = 'Bay Area Rapid Transit'] {
      marker-fill:@bartColor;
		marker-opacity: 1;
    }  
    [AGENCYNAME = 'Caltrain'] {
      marker-fill:@caltrainColor;
		marker-opacity: 1;
    }  

  }
  [zoom < 13] { marker-width:4; }
  [zoom = 13] { marker-width:8; }
  [zoom = 14] { marker-width:12; }
  [zoom > 14] { 

    marker-width:15; 
	[AGENCYNAME = 'Bay Area Rapid Transit'] {
		marker-opacity: 1;
    	marker-file: url("markers/bart.svg");
    	[zoom < 13] { marker-opacity: 0; }
		[zoom = 13] { marker-width: 15; }
		[zoom = 14] { marker-width: 20; }
		[zoom = 15] { marker-width: 30; }
		[zoom > 15] { marker-width: 40; }
	}
	[AGENCYNAME = 'Caltrain'] {
		marker-opacity: 1;
    	marker-file: url("markers/caltrain.svg");
    	[zoom < 13] { marker-opacity: 0; }
		[zoom = 13] { marker-width: 20; }
		[zoom = 14] { marker-width: 25; }
		[zoom = 15] { marker-width: 30; }
		[zoom > 15] { marker-width: 40; }
    	
	}
   }
}

#hoods {
  line-opacity:0;
  polygon-opacity:0;
  ::labels {
    text-name:"[neighborho]";
    text-face-name:@fontBold;
    text-allow-overlap:true;
	text-halo-fill: @landColor;
    text-halo-radius:3;
    text-fill: @textColor;
    [zoom < 14] { text-opacity: 0; }
	  [zoom = 14] { text-size: 13; text-opacity: 0.6; }
    [zoom > 14] { 
      text-size: 18; 
      text-wrap-width: 100;
      text-align: left;
      text-opacity: 1;
    }
  }
}

#bike-routes {
  line-color: @bikeRouteFill;
  line-join: round;
  line-cap: round;
  ::labels {
    text-name:"[streetname]";
    text-face-name:@font;
    text-placement: line;
    text-allow-overlap: false;
    text-min-distance: 100;
    text-fill: @textColor;
  }

  [zoom < 13] {
    line-width: 2;
  }
  [zoom = 13] {
    line-width: 4;
  }
  [zoom = 14] {
    line-width:10;
  }
  [zoom > 14] {
    line-width:12;
    ::labels {
      text-min-distance: 200;
    }
  }

  [facility_t = 'bike route'] {  }
  [facility_t = 'bike lane'] {  }
  [facility_t = 'bike path'] {  }
  [facility_t = 'proposed'] { line-opacity: 0; }
  
}

#bike-routes-base {
  line-color: @bikeRouteStroke;
  line-join: round;
  line-cap: round;
  [zoom < 13] {
    line-width: 4;
  }
  [zoom = 13] {
    line-width: 6;
  }
  [zoom = 14] {
    line-width:12;
  }
  [zoom > 14] {
    line-width:14;
  }
  
  [facility_t = 'bike route'] {  }
  [facility_t = 'bike lane'] {  }
  [facility_t = 'bike path'] {  }
  [facility_t = 'proposed'] { line-opacity: 0; }

}

#street-labels {
  [zoom > 14] {  
    ::labels {
      text-name:"[STREET]";
      text-face-name:@font;
      text-halo-fill: @landColor;
      text-halo-radius:3;
      text-placement: line;
      text-avoid-edges: true;
      text-min-distance: 200;
      text-fill: @textColor;
      text-opacity: 0.5;
    }
  }  
}

#street-lines {
  line-width: 8;
  line-color:@streetColor;
  line-opacity: 0.4;

  [CLASSCODE = '1']{ line-opacity: 1; line-width: 8; }
  [CLASSCODE = '2']{ line-opacity: 0.7; line-width: 6; }
  [CLASSCODE = '3']{ line-opacity: 0.7; line-width: 6; }
  [CLASSCODE = '4']{ line-opacity: 0.4; line-width: 4; }
  [CLASSCODE = '5']{ line-opacity: 0.4; line-width: 4; }
  [zoom <= 14] { 
    line-width: 3;
  }
  [zoom < 14] { 
    line-opacity: 0;
  }
}

#parks {
  line-color:@parkColor;
  line-width:1;
  line-opacity:0.3;
  polygon-opacity:0.4;
  polygon-fill:@parkColor;
  [zoom > 15] {
    ::labels {
      text-name:"[map_park_n]";
      text-face-name:@font;
      text-placement: interior;
      text-avoid-edges: true;
      text-fill: @parkTextColor;
	  text-size: 13;
      text-wrap-width: 50;
      [acres < 4] { text-opacity: 0; }
    }
   }
}

#accidents {
    marker-width:20;
    marker-fill:#f45;
    marker-line-opacity: 0;
    marker-opacity: 0.2;
    marker-allow-overlap:true;
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

#bay_area {
  line-color:@shoreColor;
  line-width:1;
  polygon-fill:@landColor;
  polygon-opacity: 0.6;
  [AREA_NAME = 'Bay and Ocean'] {
    polygon-opacity: 0.7;
    polygon-fill: @waterColor;
   }
}

#tracks {
  line-opacity: 0;  
  line-smooth: 1;
  line-dasharray: 2, 7;
  line-width: 5;
  [ASSET_NAME = 'Bart: East Dublin/Pleasanton to Millbrae'] {
    line-opacity: 0.3;
    line-color: @bartColor;
    [zoom < 14] { line-width: 3; }
    [zoom > 14] { line-opacity: 1; }
  }
  [ASSET_NAME = 'Caltrain: Gilroy to Terminus--4th And King'] {
    line-opacity: 0.2;
    line-color: @caltrainColor;
    [zoom < 14] { line-width: 3; }
    [zoom > 14] { line-opacity: 1; }
  }  
}

#tracks-2 {
  line-opacity: 0;  
  line-smooth: 1;
  line-width: 3;
  [ASSET_NAME = 'Bart: East Dublin/Pleasanton to Millbrae'] {
    line-opacity: 0.2;
    line-color: @bartColor;
  }
  [ASSET_NAME = 'Caltrain: Gilroy to Terminus--4th And King'] {
    line-opacity: 0.2;
    line-color: @caltrainColor;
  }  
}
Map {  }

#plans_eau [zoom>=12] {
  polygon-opacity:0.25;
  polygon-fill:blue;
  line-width:2;
  line-color:blue;
  line-dasharray: 1,4;
  [zoom>=14] {
    text-face-name: "DejaVu Sans Book";
    text-size: 10;
    text-name: [toponyme]+' '+[ref_sandre];
    text-halo-radius:1.5;
    text-wrap-width: 50;
  }
}

#troncons_lz [zoom>=6][zoom<=11] {
    line-color:blue;
  	line-width:4;
  	line-cap: round;
  	[largeur='Entre 15 et 50 mètres'] { line-width: 8;  }
  	[largeur='Plus de 50 mètres'][zoom>=12] { line-width: 12; }
    b/line-width: 2;
    b/line-color: #0F0;
    b/line-dasharray: 3, 6;
  	  text-face-name: "DejaVu Sans Book";
  	  text-size: 12;
  	  text-name: [toponyme];
  	  text-placement: line;
  	  text-halo-radius:1.5;
  	  text-clip:false;
}

#troncons [zoom>=12] {
    line-color:blue;
  	line-width:2;
  	line-cap: round;
  	[largeur='Entre 15 et 50 mètres'] { line-width: 8;  }
  	[largeur='Plus de 50 mètres'][zoom>=12] { line-width: 12; }
  	[navigable='Non navigable'] { b/line-color: #f66; b/line-dasharray: 5,10; }
  	[navigable='Navigable'] { b/line-width: 1.5; b/line-color: #0F0; b/line-dasharray: 10, 5;}
    [navigable='Inconnu'] {
  	  line-dasharray: 1,10;
  	  b/line-width: 1;
  	  b/line-color: blue;
  	}
  	// [etat='Fictif'][gabarit='Sans objet'] { line-color: red; }
  	[zoom>=14] {
      text-name: [ref_sandre];
   	  [gabarit!='Sans objet'] {
        text-name: [ref_sandre]+'  ('+[gabarit]+')';
  	  }
 	  text-face-name: "DejaVu Sans Book";
  	  text-size: 12;
  	  text-dy: -6;
      text-placement: line;
  	  text-halo-radius:1.5;
  	  text-clip:false;
  	}
}

#troncons_extremites  [zoom >= 18]{
  marker-width:8;
  marker-fill:blue;
  marker-allow-overlap:true;
}

#troncons_bdtopo [zoom >= 16]{
    line-color:magenta;
  	line-width:2;
  	line-cap: round;
    [fictif='Oui'] { line-dasharray: 1,10; }
    text-name: [nom];
    text-face-name: "DejaVu Sans Book";
	  text-size: 12;
    text-placement: line;
	  text-halo-radius:1.5;
	  text-clip:false;
}

#troncons_bdtopo_extremites  [zoom >= 18]{
  marker-width:8;
  marker-fill:magenta;
  marker-allow-overlap:true;
}


#noeuds [zoom>=14] {
  marker-width:8;
  marker-fill:#f45;
  marker-allow-overlap:true;
  text-face-name: "DejaVu Sans Book";
  text-size: 10;
  text-name: [toponyme]+' '+[nature];
  text-halo-radius:1.5;
  text-fill: red;
  text-align: left;
  text-dx: 6;
  text-dy: 6;
  text-placement-type: simple;
  text-placements: "E,NE,SE,W,NW,SW,N,S";
  text-wrap-width: 50;

  [nature="Changement d'attribut"]
    {
    marker-fill: cyan;
    marker-width: 6;
    text-name: "";
    }

  [nature="Source simple"]
    {
    marker-width: 0;
    text-name: "";
    }

  [nature =~ "Barrage au fil de l'eau avec ouvrage"],
  [nature =~ "Barrage au fil de l'eau ouvrage"],
  [nature =~ "Barrage de retenue sans ouvrage"]
/*  [NATURE="Chutte d\'eau"],
  [NATURE="Embouchure"],
  [NATURE="Franchissement"],
  [NATURE="Ouvrage de franchissement de chutes"],
  [NATURE="Perte"],
  [NATURE="Sans nature"],
  [NATURE="Source d\'intérêt touristique"] */
    { marker-fill: #0B0; text-fill: green; }
}

#cours_name [zoom>=12] {
    text-clip: false;
  	text-face-name: "DejaVu Sans Bold";
  	text-size: 12;
  	text-dy: 6;
  	text-name: [toponyme];
  	text-placement: line;
  	text-halo-radius:1.5;
}




#poi [zoom>=14] {
  marker-width:8;
  marker-fill:orange;
  marker-allow-overlap:true;
  text-face-name: "DejaVu Sans Book";
  text-size: 10;
  text-name: [toponyme]+' '+[nat];
  text-halo-radius:1.5;
  text-fill: orange;
  text-dx: 4;
  text-dy: 4;
  text-placement-type: simple;
  text-placements: "S,E,NE,SE,W,NW,SW,N";
  text-wrap-width: 50;

}

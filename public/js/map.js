
var lenghtJson = pointsJson.length;
var map = L.mapbox.map('map', 'examples.map-9ijuk24y');
map.scrollWheelZoom.disable();
var geoJson = [];
var polutionColor = "#3E47D0";


for(var i = 0 ; i<lenghtJson; i++){
console.log(pointsJson[i].pollution);
switch (pointsJson[i].statut){

	case 0:
	polutionColor = "#31AA39";
	break;
	
	case 1:
	polutionColor = "#16B1EF";
	break;


	case 2:
	polutionColor = "#EB4E1F";
	break;

}

geoJson.push({
type: 'Feature',
		"geometry": { "type": "Point", "coordinates": [parseFloat(pointsJson[i].longitude), parseFloat(pointsJson[i].latitude)]},
		"properties": {
			"marker-color": polutionColor,
			"marker-symbol": "waste-basket",
			"image": "public/images/uploaded/"+pointsJson[i].chemin,
			"url": "public/images/uploaded/"+pointsJson[i].chemin,
			"city": pointsJson[i].longitude+" "+pointsJson[i].latitude
		}
        })
}
// Add custom popups to each using our custom feature properties
map.markerLayer.on('layeradd', function(e) {
    var marker = e.layer,
        feature = marker.feature;

    // Create custom popup content
    var popupContent =  '<a target="_blank" class="popup" href="' + feature.properties.url + '">' +
                            '<img src="' + feature.properties.image + '">' +
                        '   <h2>' + feature.properties.city + '</h2>' +
                        '</a>';

    // http://leafletjs.com/reference.html#popup
    marker.bindPopup(popupContent,{
        closeButton: false,
        minWidth: 320
    });
});

// Add features to the map
map.markerLayer.setGeoJSON(geoJson);

map.setView([48.855, 2.352], 13);
$.getScript("https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places", function(){

   //alert("Script loaded and executed.");
   // Here you can use anything you defined in the loaded script
var map;
var infowindow;


function initialize() {
  var pyrmont = new google.maps.LatLng(-33.8665433, 151.1956316);

  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: pyrmont,
    zoom: 15
  });

  var request = {
    location: pyrmont,
    radius: 1500,
    query: 'hotel'
  };
  infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);
  service.textSearch(request, callback);
}
var pid
function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
	
	pid = results[0]["place_id"]

		$(document).ready(function(){
			$('#field').val(results[1]["place_id"]);
			$('#field1').val(results[1]["formatted_address"]);
		});
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
}

//function map(){
google.maps.event.addDomListener(window, 'load', initialize);

//}
});
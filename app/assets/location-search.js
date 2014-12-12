$.when(
    $.getScript( "https://maps.googleapis.com/maps/api/js?v=3.exp" ),
    $.getScript( "https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places" ),
    $.Deferred(function( deferred ){
        $( deferred.resolve );
    })
).done(function(){

//alert("Script loaded and executed.");
var geocoder;
var map;
var infowindow;
var markers = [];

function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(-34.397, 150.644);
  var mapOptions = {
    zoom: 12,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

function codeAddress() {
	clearMarkers();
  var address = document.getElementById('address').value;
	var name = document.getElementById('name').value;
	var radius = document.getElementById('radius').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
			var center = results[0].geometry.location;
			
      map.setCenter(center);
			var request = {
    		location: center,
    		radius: radius,
    		query: name
  		};
			infowindow = new google.maps.InfoWindow();
  		var service = new google.maps.places.PlacesService(map);
  		service.textSearch(request, callback);

    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

function callback(results_n, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results_n.length; i++) {
      createMarker(results_n[i]);
    }

		$(document).ready(function(){
			$('#field').val(results_n[0]["place_id"]);
			$('#field1').val(results_n[0]["formatted_address"]);
		});
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });
	markers.push(marker);

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
}

// Sets the map on all markers in the array.
function setAllMap(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
  setAllMap(null);
	$(document).ready(function(){
			$('#field').val();
			$('#field1').val();
		});
}

google.maps.event.addDomListener(window, 'load', initialize);

});

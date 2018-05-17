
	</main>
	<section id="location"></section>
	<script>
	var start =  {lat: -27.4993975, lng: 153.0110741} //'St Lucia, QLD';
	var restaurant = {lat: -27.4921983,lng: 152.9805645};
	function initMap() {
		var directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: true});
		var directionsService = new google.maps.DirectionsService;
		var map = new google.maps.Map(document.getElementById('location'), {
			zoom: 15,
			center: restaurant
		});

		directionsDisplay.setMap(map);

		var restaurantInfo = new google.maps.InfoWindow();
		var restaurantMarker = new google.maps.Marker({
			position: restaurant,
			map: map,
			title: 'Random Restaurant'
		});
		restaurantInfo.setContent('<div><strong>Random Restaurant</strong><br>23 Random Street St. Lucia, QLD 4067</div>');
		restaurantInfo.open(map, restaurantMarker);

		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position){
				start = {lat: position.coords.latitude, lng: position.coords.longitude };
				calculateAndDisplayRoute(directionsService, directionsDisplay, start, restaurant);
				var userInfo = new google.maps.InfoWindow();
				var userMarker = new google.maps.Marker({
					position: start,
					map: map,
					title: 'User Location'
				});

				userInfo.setContent('<div><strong>Your Current Location</strong></div>');
				userInfo.open(map, userMarker);
			});
		} else {
			calculateAndDisplayRoute(directionsService, directionsDisplay, start, restaurant);
		}

	}
	function calculateAndDisplayRoute(directionsService, directionsDisplay, start, end) {
		directionsService.route({
			origin: start,
			destination: end,
			travelMode: 'DRIVING'
		}, function(response, status) {
			if (status === 'OK') {
			directionsDisplay.setDirections(response);
			} else {
			window.alert('Directions request failed due to ' + status);
			}
		});
	}
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $this->config->item('google_map_api_key') ?>&callback=initMap" async defer></script>
	<main>
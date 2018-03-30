
	</main>
	<section id="location"></section>
	<script>
		function initMap() {
			var myLatLng = {lat: -27.4984988, lng: 153.0130915};

			var map = new google.maps.Map(document.getElementById('location'), {
				zoom: 15,
				center: myLatLng
			});

			var infowindow = new google.maps.InfoWindow();
			var marker = new google.maps.Marker({
				position: myLatLng,
				map: map,
				title: 'Random Restaurant'
			});

			infowindow.setContent('<div><strong>Random Restaurant</strong><br>23 Random Street St. Lucia, QLD 4067</div>');
			infowindow.open(map, marker);
		}
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $this->config->item('google_map_api_key') ?>&callback=initMap" async defer></script>
	<main>
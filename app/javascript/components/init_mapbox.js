import mapboxgl from 'mapbox-gl';

// This function is called at the end of initMapbox
// It make the map zoom and fit around the markers
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  // here I am taking the element <div id="map"> in index page
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    // here I have my element map,
    // I am accessing my key with the dataset mapboxApiKey
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    // Here I am displaying a map in my <div id="map"> in index page
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    // Careful here the markers are generated in the movies_controller
    // It's sent to the HTML turned into a JSON in the html [{"lat": 47.1, "lng": -1.5}]
    // Here we catch back the JSON and parse it in JS
    const markers = JSON.parse(mapElement.dataset.markers);

    // We go over markers and add markers to map
    markers.forEach((marker) => {
      // here I am calling the info displayed when click on it
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // adding the info to the marker
        .addTo(map);
    });

    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

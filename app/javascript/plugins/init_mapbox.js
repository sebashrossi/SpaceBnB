import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/cebopowa/ckm3jh68s13bu17lhxtlo5wft'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {

    let element = document.createElement('div');
    element.style.backgroundImage = `url(${marker.image_url})`;
    element.className = 'marker';
    element.style.width = '75px';
    element.style.height = '75px';
    element.style.backgroundSize = 'cover';
    element.style.fill = '#ffffff';
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

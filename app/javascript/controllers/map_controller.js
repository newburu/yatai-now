import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // --- Configuration ---
  static values = {
    apiKey: String,
    enablePolling: Boolean,
    userSignedIn: Boolean
  }

  // --- Lifecycle ---
  connect() {
    this.API_URL = '/api/v1/map_data';
    this.UPDATE_INTERVAL = 30000; // 30 seconds
    this.markers = {}; // To store marker objects by stall ID

    // Bind `this` to ensure the correct context when methods are used as callbacks
    this.initMap = this.initMap.bind(this);
    this.updateMapMarkers = this.updateMapMarkers.bind(this);

    this.loadGoogleMapsAPI();
  }

  disconnect() {
    // Stop the interval when the controller is disconnected (e.g., when navigating away)
    if (this.updateInterval) {
      clearInterval(this.updateInterval);
      console.log('Map update interval stopped.');
    }
  }

  // --- Google Maps API Handling ---
  loadGoogleMapsAPI() {
    // Avoid reloading the script if it's already present
    if (window.google && window.google.maps) {
      this.initMap();
      return;
    }

    // Set the global callback function that the Google Maps API will execute upon loading
    window.initMap = this.initMap;

    // Create and append the script tag to the document head
    const script = document.createElement('script');
    script.src = `https://maps.googleapis.com/maps/api/js?key=${this.apiKeyValue}&callback=initMap`;
    script.async = true;
    document.head.appendChild(script);
  }

  // --- Map Initialization & Updates ---

  /**
   * Initializes the Google Map. This method is the callback for the Google Maps API.
   */
  initMap() {
    this.map = new google.maps.Map(this.element, {
      center: { lat: 34.8394, lng: 134.6939 }, // Himeji Station area
      zoom: 13,
    });

    // Fetch and display markers for the first time
    this.updateMapMarkers(true);

    // Set up a recurring interval to update markers
    this.updateInterval = setInterval(this.updateMapMarkers, this.UPDATE_INTERVAL);
  }

  /**
   * Fetches stall data from the API and updates the map markers.
   * @param {boolean} firstLoad - Indicates if this is the initial data load.
   */
  async updateMapMarkers(firstLoad = false) {
    // For subsequent updates, check if polling is disabled for non-logged-in users
    if (!firstLoad && !this.enablePollingValue && !this.userSignedInValue) {
      location.reload(); // Reload to get fresh, server-rendered data
      return;
    }

    console.log('Fetching map data...');
    try {
      const response = await fetch(this.API_URL);
      if (!response.ok) {
        console.error('Failed to fetch map data');
        return;
      }

      const stalls = await response.json();
      this.processStallData(stalls);
      console.log('Map updated.');

    } catch (error) {
      console.error('Error updating map:', error);
    }
  }

  /**
   * Processes the stall data and updates or creates markers on the map.
   * @param {Array} stalls - An array of stall objects from the API.
   */
  processStallData(stalls) {
    stalls.forEach(stall => {
      const latNum = parseFloat(stall.latitude);
      const lngNum = parseFloat(stall.longitude);

      // Ensure location data is valid before proceeding
      if (isNaN(latNum) || isNaN(lngNum)) {
        console.warn(`Skipping stall ${stall.id} due to invalid location data:`, stall);
        return;
      }

      const stallId = stall.id;
      const position = { lat: latNum, lng: lngNum };
      const infoWindowContent = `
        <strong>${stall.name}</strong><br>
        状況: ${stall.status || '不明'}<br>
        最終更新: ${new Date(stall.last_updated).toLocaleTimeString()}
      `;

      if (this.markers[stallId]) {
        // If marker already exists, update its properties
        this.updateExistingMarker(this.markers[stallId], position, infoWindowContent, stall.icon_url);
      } else {
        // If marker doesn't exist, create a new one
        this.createNewMarker(stallId, position, stall.name, infoWindowContent, stall.icon_url);
      }
    });
  }

  /**
   * Updates an existing marker's position, info window, and icon.
   */
  updateExistingMarker(markerData, position, content, iconUrl) {
    markerData.marker.setPosition(position);
    markerData.infoWindow.setContent(content);
    markerData.marker.setIcon(this.createIcon(iconUrl));
  }

  /**
   * Creates a new marker and stores it.
   */
  createNewMarker(stallId, position, title, content, iconUrl) {
    const infoWindow = new google.maps.InfoWindow({ content });

    const marker = new google.maps.Marker({
      position,
      map: this.map,
      title,
      icon: this.createIcon(iconUrl),
    });

    marker.addListener('click', () => {
      infoWindow.open({ anchor: marker, map: this.map });
    });

    // Store the new marker and its info window
    this.markers[stallId] = { marker, infoWindow };
  }

  /**
   * Creates a scaled icon object for a marker.
   * @param {string|null} url - The URL of the icon.
   * @returns {google.maps.Icon|null}
   */
  createIcon(url) {
    if (!url) return null;
    return {
      url,
      scaledSize: new google.maps.Size(40, 40),
    };
  }
}

<script>
/* global mapboxgl */
import axios from "axios";
export default {
  data: function () {
    return {
      message: "I'm sorry, Culver's. I must not tell lies. If only your API followed the same rules...",
      locations: [],
      flavor: [],
      mapping: [],
      // newLocationParams: {},
      // currentLocation: {},
      // editLocationParams: {},
    };
  },
  created: function () {
    axios
      .get("locations.json")
      .then((response) => {
        this.locations = response.data;
      })
      .then(() => {
        mapboxgl.accessToken = process.env.VUE_APP_MAPS_API_KEY;
        const map = new mapboxgl.Map({
          container: "map", // container ID
          style: "mapbox://styles/mapbox/streets-v11", // style URL
          center: [-87.8, 42.27], // starting position [lng, lat]
          zoom: 9, // starting zoom
          projection: "globe", // display the map as a 3D globe
        });
        map.on("style.load", () => {
          map.setFog({}); // Set the default atmosphere style
        });
        this.locations.forEach((locations) => {
          const popup = new mapboxgl.Popup({ offset: 25 }).setText(locations.title);
          const el = document.createElement("div");
          el.className = "marker";
          el.style.backgroundImage = "url(" + locations.flavor[0].image_url + ")";
          el.style.width = "50px";
          el.style.height = "50px";
          el.style.backgroundSize = "100%";
          // new mapboxgl.Marker().setLngLat([locations.longitude, locations.latitude]).setPopup(popup).addTo(map);
          new mapboxgl.Marker(el).setLngLat([locations.longitude, locations.latitude]).setPopup(popup).addTo(map);
          // console.log(marker1);
        });
      });
  },
  methods: {
    showLocation: function (location) {
      console.log(location);
      this.currentLocation = location;
      this.editLocationParams = location;
      document.querySelector("#location-plot").showModal();
    },
  },
};
</script>

<template>
  <div class="home">
    <!-- <p>{{ locations }}</p> -->
    <h1>{{ message }}</h1>
    <!-- <TransitionGroup name="list"> -->
    <div class="map-border">
      <div id="map"></div>
    </div>
    <!-- <div v-for="location in locations" v-bind:key="location.id">
      <div v-for="flavor in location.flavor" v-bind:key="flavor.id">
        <div class="card" style="width: 15rem">
          <img :src="flavor.image_url" alt="blah blah" />
          <div class="card-body">
            <h5 class="card-title">{{ location.title }}</h5>
            <p class="card-text">
              {{ flavor.name }}
            </p>
          </div>
        </div>
      </div> -->
    <!-- </div> -->
    <!-- </TransitionGroup> -->
  </div>
</template>

<style>
#map {
  position: relative;
  margin: auto;
  /* padding: 10px; */
  bottom: 0;
  height: 600px;
  width: 600px;
}
#marker1 {
  display: block;
  width: 50px;
  height: 50px;
  border: none;
  border-radius: 50%;
  cursor: pointer;
  padding: 0;
}
</style>

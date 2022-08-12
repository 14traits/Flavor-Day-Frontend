<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "MVP - Do or do not; there is no try!",
      locations: [],
      flavor: [],
      newLocationParams: {},
      currentLocation: {},
      editLocationParams: {},
    };
  },
  created: function () {
    this.indexLocations();
  },
  methods: {
    indexLocations: function () {
      axios.get("locations.json").then((response) => {
        this.locations = response.data;
        console.log("All Locations", this.locations);
      });
    },
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
    <h1>{{ message }}</h1>
    <TransitionGroup name="list">
      <div v-for="location in locations" v-bind:key="location.id">
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
        </div>
      </div>
    </TransitionGroup>
  </div>
</template>

<style></style>

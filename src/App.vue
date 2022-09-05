<script>
export default {
  data: function () {
    return {
      // isLoggedIn: false,
      // flashMessage: "",
    };
  },
  methods: {
    // getUserId: function () {
    //   return localStorage.getItem("user_id");
    // },
  },
  // watch: {
  //   $route: function () {
  //     this.isLoggedIn = !!localStorage.jwt;
  //     this.flashMessage = localStorage.getItem("flashMessage");
  //     this.flashMessage = localStorage.removeItem("flashMessage");
  //   },
  // },
};
</script>

<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">FlavorDay</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <!-- <li><a class="nav-link" href="/.">Locations</a></li> -->
          <!-- <li><a class="nav-link" href="/movies/new">New Movies</a></li> -->
          <!-- <li><a class="nav-link" href="/movies/new">Edit Movies</a></li>
          <li><a v-if="!isLoggedIn" class="nav-link" href="/signup">Sign Up</a></li>
          <li><a v-if="!isLoggedIn" class="nav-link" href="/login">Sign In</a></li>
          <li><a v-if="isLoggedIn" class="nav-link" href="/logout">Sign Out</a></li> -->
        </ul>
        <!-- <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
          <button class="btn btn-success" type="submit">Search</button>
        </form> -->
      </div>
    </div>
  </nav>

  <!-- <nav>
    <router-link to="/">Home</router-link>
    |
    <router-link to="/movies">Movies</router-link>
    |
    <router-link to="/movies/new">New Movie</router-link>
    |
    <router-link to="/signup">Sign Up</router-link>
    |
    <router-link to="/login">Log In</router-link>
    |
    <router-link to="/logout">Log Out</router-link>
  </nav> -->
  <!-- <div v-if="this.flashMessage" class="alert alert-success">
    {{ flashMessage }}
  </div> -->
  <router-view />
</template>

<style>
#app {
  font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  /* background-image: url("https://images.unsplash.com/photo-1657960526734-108dcd75a24e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2080&q=80"); */
}
/* #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
nav {
  padding: 30px;
}
nav a {
  font-weight: bold;
  color: #2c3e50;
}
nav a.router-link-exact-active {
  color: #42b983;
} */
</style>

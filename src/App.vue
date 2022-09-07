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
      <a class="navbar-brand" href="/">
        <img
          src="./assets/image-from-rawpixel-id-1234666-original.png"
          alt="FlavorDay Logo"
          width="30"
          height="24"
          class="d-inline-block align-text-top"
        />
        FlavorDay
      </a>

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
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">Code and Site Design ©2022 John Rogers.</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      <span class="mb-3 mb-md-0 text-muted">Culver's Brand and Images ©Culver's</span>
      <li class="ms-3">
        <a class="text-muted" href="#">
          <svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg>
        </a>
      </li>
      <li class="ms-3">
        <a class="text-muted" href="#">
          <!-- <font-awesome-icon icon="fa-brands fa-square-twitter" /> -->
          <svg class="bi" width="24" height="24">
            <use xlink:href="#instagram"></use>
          </svg>
        </a>
      </li>
      <li class="ms-3">
        <a class="text-muted" href="#">
          <svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg>
        </a>
      </li>
    </ul>
  </footer>
</template>

<style>
#app {
  font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>

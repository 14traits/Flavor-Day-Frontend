import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
import "bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";

axios.defaults.baseURL = process.env.VUE_APP_API_ENDPOINT;
createApp(App).use(router).mount("#app");

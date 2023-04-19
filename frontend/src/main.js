import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import { routes } from "./route/index.js";
import { createWebHistory, createRouter } from "vue-router";

const router = createRouter({
  history: createWebHistory(),
  routes, // short for `routes: routes`
  scrollBehavior(to, from, savedPosition) {
    // always scroll to top
    return { top: 0 };
  },
});

const app = createApp(App);
app.use(router);
app.mount("#app");

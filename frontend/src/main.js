import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import { routes } from "./route/index.js";
import { createWebHistory, createRouter } from "vue-router";
import ConfirmAlert from "./components/Shared/ConfirmAlert.vue";
import VueApexCharts from "vue3-apexcharts";
import { createPinia } from "pinia";
import ElementPlus from "element-plus";
import "element-plus/dist/index.css";
import axios from "axios";

axios.defaults.baseURL = "http://localhost:8000/api";

const router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior(to, from, savedPosition) {
    return { top: 0 };
  },
});

const app = createApp(App);
const pinia = createPinia();

app.component("ConfirmAlert", ConfirmAlert);
app.use(router);
app.use(VueApexCharts);
app.use(ElementPlus);
app.use(pinia);
app.mount("#app");

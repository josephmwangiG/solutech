import Main from "./../components/Main.vue";
import Users from "./../components/Users.vue";
import Dashboard from "./../components/Dashboard.vue";
import Tasks from "./../components/Tasks.vue";
import Status from "./../components/Status.vue";
import Reports from "./../components/Reports.vue";

export const routes = [
  {
    path: "/",
    name: "home",
    component: Dashboard,
    children: [
      {
        path: "/dashboard",
        name: "dashboard",
        component: Dashboard,
      },
      {
        path: "/users",
        name: "users",
        component: Users,
      },
      {
        path: "/tasks",
        name: "tasks",
        component: Tasks,
      },
      {
        path: "/status",
        name: "status",
        component: Status,
      },
      {
        path: "/reports",
        name: "reports",
        component: Reports,
      },
    ],
  },
];

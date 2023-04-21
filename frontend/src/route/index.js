import Main from "./../components/Main.vue";
import Login from "./../components/Auth/Login.vue";
import Users from "./../components/Users.vue";
import Dashboard from "./../components/Dashboard.vue";
import Tasks from "./../components/Tasks.vue";
import UsersTasks from "./../components/UsersTasks.vue";
import Status from "./../components/Status.vue";
import UsersReports from "./../components/UsersReports.vue";
import TasksReports from "./../components/TasksReports.vue";
import { useRouter } from "vue-router";

function routerGuard(to, from, next) {
  if (localStorage.getItem("access_token") != null) {
    next();
    return true;
  }

  next("/login");
  return false;
}

export const routes = [
  {
    path: "/login",
    name: "login",
    component: Login,
  },
  {
    path: "/",
    name: "home",
    component: Main,
    children: [
      {
        path: "/",
        alias: "/dashboard",
        name: "dashboard",
        component: Dashboard,
        beforeEnter: routerGuard,
      },
      {
        path: "/users",
        name: "users",
        component: Users,
        beforeEnter: routerGuard,
      },
      {
        path: "/tasks",
        name: "tasks",
        component: Tasks,
        beforeEnter: routerGuard,
      },
      {
        path: "/users-tasks",
        name: "users-tasks",
        component: UsersTasks,
        beforeEnter: routerGuard,
      },
      {
        path: "/status",
        name: "status",
        component: Status,
        beforeEnter: routerGuard,
      },
      {
        path: "/tasks-reports",
        name: "tasks-reports",
        component: TasksReports,
        beforeEnter: routerGuard,
      },
      {
        path: "/users-reports",
        name: "users-reports",
        component: UsersReports,
        beforeEnter: routerGuard,
      },
    ],
  },
];

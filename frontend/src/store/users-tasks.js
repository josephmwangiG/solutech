import { defineStore } from "pinia";
import axios from "axios";

export const useUsersTaskStore = defineStore("user_task", {
  state: () => {
    return {
      users_tasks: null,
      all_users_tasks: null,
      headers: {
        Authorization: "Bearer " + localStorage.getItem("access_token"),
      },
    };
  },
  actions: {
    async getUsersTasks(page = 1) {
      try {
        let response = await axios.get(`users-tasks?page=${page}`, {
          headers: this.headers,
        });

        this.users_tasks = response.data.users_tasks;
        this.all_users_tasks = response.data.all_users_tasks;

        return true;
      } catch (e) {
        return e.response;
      }
    },
    async editTask(form) {
      try {
        let response = await axios.put(`users-tasks/${form.id}`, form, {
          headers: this.headers,
        });

        this.users_tasks = response.data.users_tasks;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async deleteTask(id) {
      try {
        let response = await axios.delete(`users-tasks/${id}`, {
          headers: this.headers,
        });

        this.users_tasks = response.data.users_tasks;
        return true;
      } catch (e) {
        return e.response;
      }
    },
  },
});

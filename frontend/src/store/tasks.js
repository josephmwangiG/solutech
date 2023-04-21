import { defineStore } from "pinia";
import axios from "axios";

export const useTaskStore = defineStore("task", {
  state: () => {
    return {
      tasks: null,
      all_tasks: null,
      headers: {
        Authorization: "Bearer " + localStorage.getItem("access_token"),
      },
    };
  },
  actions: {
    async getTasks(page = 1) {
      try {
        let response = await axios.get(`tasks?page=${page}`, {
          headers: this.headers,
        });

        this.tasks = response.data.tasks;
        this.all_tasks = response.data.all_tasks;

        return true;
      } catch (e) {
        return e.response;
      }
    },
    async addTask(form) {
      try {
        let response = await axios.post(`tasks`, form, {
          headers: this.headers,
        });

        this.tasks = response.data.tasks;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async editTask(form) {
      try {
        let response = await axios.put(`tasks/${form.id}`, form, {
          headers: this.headers,
        });

        this.tasks = response.data.tasks;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async deleteTask(id) {
      try {
        let response = await axios.delete(`tasks/${id}`, {
          headers: this.headers,
        });

        this.tasks = response.data.tasks;
        return true;
      } catch (e) {
        return e.response;
      }
    },
  },
});

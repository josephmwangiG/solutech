import { defineStore } from "pinia";
import axios from "axios";

export const useUserStore = defineStore("user", {
  state: () => {
    return {
      users: null,
      all_users: null,
      headers: {
        Authorization: "Bearer " + localStorage.getItem("access_token"),
      },
    };
  },
  actions: {
    async getUsers(page = 1) {
      try {
        let response = await axios.get(`users?page=${page}`, {
          headers: this.headers,
        });

        this.users = response.data.users;
        this.all_users = response.data.all_users;
      } catch (e) {
        return e.response;
      }
    },
    async addUser(form) {
      try {
        let response = await axios.post(`users`, form, {
          headers: this.headers,
        });

        this.users = response.data.users;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async editUser(form) {
      try {
        let response = await axios.put(`users/${form.id}`, form, {
          headers: this.headers,
        });

        this.users = response.data.users;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async deleteUser(id) {
      try {
        let response = await axios.delete(`users/${id}`, {
          headers: this.headers,
        });

        this.users = response.data.users;
        return true;
      } catch (e) {
        return e.response;
      }
    },
  },
});

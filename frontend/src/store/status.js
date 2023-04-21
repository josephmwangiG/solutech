import { defineStore } from "pinia";
import axios from "axios";

export const useStatusStore = defineStore("status", {
  state: () => {
    return {
      status: null,
      all_status: null,
      headers: {
        Authorization: "Bearer " + localStorage.getItem("access_token"),
      },
    };
  },
  actions: {
    async getStatus(page = 1) {
      try {
        let response = await axios.get(`status?page=${page}`, {
          headers: this.headers,
        });

        this.status = response.data.status;
        this.all_status = response.data.all_status;
      } catch (e) {
        return e.response;
      }
    },
    async addStatus(form) {
      try {
        let response = await axios.post(`status`, form, {
          headers: this.headers,
        });

        this.status = response.data.status;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async editStatus(form) {
      try {
        let response = await axios.put(`status/${form.id}`, form, {
          headers: this.headers,
        });

        this.status = response.data.status;
        return true;
      } catch (e) {
        return e.response;
      }
    },
    async deleteStatus(id) {
      try {
        let response = await axios.delete(`status/${id}`, {
          headers: this.headers,
        });

        this.status = response.data.status;
        return true;
      } catch (e) {
        return e.response;
      }
    },
  },
});

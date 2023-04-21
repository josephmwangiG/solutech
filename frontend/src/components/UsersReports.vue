<template>
  <div class="body-wrapper">
    <div class="bodywrapper__inner">
      <div
        class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
      >
        <h6 class="page-title">Users</h6>
        <div
          class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins"
        >
          <a :href="axios.defaults.baseURL + '/users-pdf'" target="_blank">
            <button class="btn btn-sm btn-outline-primary" type="button">
              <i class="la la-download"></i>Download
            </button>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body p-0" v-if="store.users != null">
              <div class="table-responsive--md table-responsive">
                <table class="table--light style--two table">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Tasks</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="item in store.users.data" :key="item.id">
                      <td>{{ item.id }}</td>
                      <td>{{ item.name }}</td>
                      <td>{{ item.email }}</td>
                      <td>{{ item.tasks.length }}</td>
                    </tr>
                  </tbody>
                </table>
                <div class="my-3 d-flex justify-content-end">
                  <el-pagination
                    background
                    layout="prev, pager, next"
                    :page-size="store.users.per_page"
                    :total="store.users.total"
                    @current-change="getData"
                  />
                </div>
                <!-- table end -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import UsersForm from "./Forms/UsersForm.vue";
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
import axios from "axios";
import { useUserStore } from "./../store/users.js";

const store = useUserStore();

let action = ref("Create");
let itemId = ref(0);
let deleteMessage = "The user will be removed from the tasks assigned";
let alert = "Are you sure you want to delete this user";
let form = ref({
  id: "",
  name: "",
  email: "",
});

const getData = (page) => {
  store.getUsers(page);
};

const addItem = () => {
  action.value = "Create";
  form.value = {
    id: "",
    name: "",
    email: "",
  };
};

const editItem = (item) => {
  action.value = "Edit";
  form.value = {
    id: item.id,
    name: item.name,
    email: item.email,
  };
};

const deleteItem = (item) => {
  itemId.value = item.id;
};

const confirm = async (option) => {
  if (option) {
    let response = await store.deleteUser(itemId.value);

    if (response == true) {
      ElMessage({
        message: "User deleted successfully",
        grouping: true,
        type: "success",
      });
    } else {
      ElMessage({
        message: "Could not delete user",
        grouping: true,
        type: "danger",
      });
    }
  }
};

onMounted(() => {
  store.getUsers();
});
</script>
<style lang="">
</style>
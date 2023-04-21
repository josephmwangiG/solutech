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
          <button
            data-bs-target="#formModal"
            data-bs-toggle="modal"
            class="btn btn-sm btn-outline-primary"
            type="button"
            @click="addItem"
          >
            <i class="la la-plus"></i>Add User
          </button>
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
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="item in store.users.data" :key="item.id">
                      <td>{{ item.id }}</td>
                      <td>{{ item.name }}</td>
                      <td>{{ item.email }}</td>
                      <td>{{ item.tasks.length }}</td>

                      <td>
                        <button
                          class="btn btn-sm btn-outline--primary"
                          data-bs-toggle="modal"
                          data-bs-target="#formModal"
                          @click="editItem(item)"
                          type="button"
                        >
                          <i class="la la-pencil"></i> Edit
                        </button>

                        <button
                          class="btn btn-sm btn-outline-danger ms-1"
                          data-bs-toggle="modal"
                          data-bs-target="#confirmModal"
                          @click="deleteItem(item)"
                        >
                          <i class="la la-trash"></i> Delete
                        </button>
                      </td>
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

      <ConfirmAlert
        :message="deleteMessage"
        :alert="alert"
        @confirm="confirm"
      />
      <UsersForm :form="form" :action="action" />
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import UsersForm from "./Forms/UsersForm.vue";
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
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
  tasks: "",
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
    tasks: "",
  };
};

const editItem = (item) => {
  action.value = "Edit";
  form.value = {
    id: item.id,
    name: item.name,
    email: item.email,
    tasks: item.tasks,
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
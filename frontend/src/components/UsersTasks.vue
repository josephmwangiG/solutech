<template>
  <div class="body-wrapper">
    <div class="bodywrapper__inner">
      <div
        class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
      >
        <h6 class="page-title">User Tasks</h6>
        <div
          class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins"
        ></div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body p-0" v-if="store.users_tasks != null">
              <div class="table-responsive--md table-responsive">
                <table class="table--light style--two table">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Task</th>
                      <th>Descritpion</th>
                      <th>Users</th>
                      <th>Due Date</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="item in store.users_tasks.data" :key="item.id">
                      <td>{{ item.id }}</td>
                      <td>{{ item.task.name }}</td>
                      <td>{{ item.task.description }}</td>
                      <td>{{ item.user.name }}</td>
                      <td>{{ item.due_date }}</td>
                      <td>{{ item.status.name }}</td>

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
                    :page-size="store.users_tasks.per_page"
                    :total="store.users_tasks.total"
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
      <UsersTasksForm :form="form" :action="action" />
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import UsersTasksForm from "./Forms/UsersTasksForm.vue";
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
import { useUsersTaskStore } from "./../store/users-tasks.js";

const store = useUsersTaskStore();

let action = ref("Create");
let itemId = ref(0);
let deleteMessage = "Confirm delete";
let alert = "Are you sure you want to delete this item";
let form = ref({
  id: "",
  due_date: "",
  status_id: "",
});

const getData = (page) => {
  store.getUsersTasks(page);
};

const editItem = (item) => {
  action.value = "Edit";
  form.value = {
    id: item.id,
    due_date: item.due_date,
    status_id: item.status_id,
  };
};

const deleteItem = (item) => {
  itemId.value = item.id;
};

const confirm = async (option) => {
  if (option) {
    let response = await store.deleteTask(itemId.value);

    if (response == true) {
      ElMessage({
        message: "Task deleted successfully",
        grouping: true,
        type: "success",
      });
    } else {
      ElMessage({
        message: "Could not delete task",
        grouping: true,
        type: "danger",
      });
    }
  }
};

onMounted(() => {
  store.getUsersTasks();
});
</script>
<style lang="">
</style>
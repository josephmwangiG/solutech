<template>
  <div class="body-wrapper">
    <div class="bodywrapper__inner">
      <div
        class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
      >
        <h6 class="page-title">Tasks</h6>
        <div
          class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins"
        >
          <a :href="axios.defaults.baseURL + '/tasks-pdf'" target="_blank">
            <button class="btn btn-sm btn-outline-primary" type="button">
              <i class="la la-download"></i>Download
            </button>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body p-0" v-if="store.tasks != null">
              <div class="table-responsive--md table-responsive">
                <table class="table--light style--two table">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Descritpion</th>
                      <th>Due Date</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="item in store.tasks.data" :key="item.id">
                      <td>{{ item.id }}</td>
                      <td>{{ item.name }}</td>
                      <td>{{ item.description }}</td>
                      <td>{{ item.due_date }}</td>
                      <td>{{ item.status.name }}</td>
                    </tr>
                  </tbody>
                </table>
                <div class="my-3 d-flex justify-content-end">
                  <el-pagination
                    background
                    layout="prev, pager, next"
                    :page-size="store.tasks.per_page"
                    :total="store.tasks.total"
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
      <TasksForm :form="form" :action="action" />
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import TasksForm from "./Forms/TasksForm.vue";
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
import { useTaskStore } from "./../store/tasks.js";
import axios from "axios";

const store = useTaskStore();

let action = ref("Create");
let itemId = ref(0);
let deleteMessage = "The task will be removed from the tasks assigned";
let alert = "Are you sure you want to delete this task";
let form = ref({
  id: "",
  name: "",
  description: "",
  due_date: "",
  status_id: "",
});

const getData = (page) => {
  store.getTasks(page);
};

const addItem = () => {
  action.value = "Create";
  form.value = {
    id: "",
    name: "",
    description: "",
    due_date: "",
    status_id: "",
  };
};

const editItem = (item) => {
  action.value = "Edit";
  form.value = {
    id: item.id,
    name: item.name,
    description: item.description,
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
  store.getTasks();
});
</script>
<style lang="">
</style>
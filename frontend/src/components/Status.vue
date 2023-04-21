<template>
  <div class="body-wrapper">
    <div class="bodywrapper__inner">
      <div
        class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
      >
        <h6 class="page-title">Task Status</h6>
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
            <i class="la la-plus"></i>Add Status
          </button>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body p-0" v-if="store.status != null">
              <div class="table-responsive--md table-responsive">
                <table class="table--light style--two table">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="item in store.status.data" :key="item.id">
                      <td>{{ item.id }}</td>
                      <td>{{ item.name }}</td>

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
                    :page-size="store.status.per_page"
                    :total="store.status.total"
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
      <StatusForm :form="form" :action="action" />
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import StatusForm from "./Forms/StatusForm.vue";
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
import { useStatusStore } from "./../store/status.js";

const store = useStatusStore();

let action = ref("Create");
let itemId = ref(0);
let deleteMessage = "Status assigned to tasks will not be deleted";
let alert = "Are you sure you want to delete this status";
let form = ref({
  id: "",
  name: "",
  email: "",
});

const getData = (page) => {
  store.getStatus(page);
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
    let response = await store.deleteStatus(itemId.value);

    if (response == true) {
      ElMessage({
        message: "Status deleted successfully",
        grouping: true,
        type: "success",
      });
    } else {
      ElMessage({
        message: "Could not delete status",
        grouping: true,
        type: "danger",
      });
    }
  }
};

onMounted(() => {
  store.getStatus();
});
</script>
<style lang="">
</style>
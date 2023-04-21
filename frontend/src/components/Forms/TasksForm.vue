<template>
  <div class="modal" id="formModal" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ action }} Task</h5>
          <button
            class="close"
            id="closeBtn"
            data-bs-dismiss="modal"
            type="button"
            @click="closeBtn"
            aria-label="Close"
          >
            <i class="las la-times"></i>
          </button>
        </div>
        <form method="post">
          <div class="modal-body">
            <div class="row">
              <div class="form-group col-md-6">
                <label>Task</label>
                <el-input
                  v-model="form.name"
                  type="text"
                  size="large"
                  placeholder="Task Name"
                  required
                />
                <small class="text-danger" v-if="errors.name">{{
                  errors.name[0]
                }}</small>
              </div>
              <div class="form-group col-md-6">
                <label> Due Date </label>
                <div class="input-group">
                  <el-input
                    v-model="form.due_date"
                    type="date"
                    size="large"
                    placeholder="Due Date"
                  />
                  <small class="text-danger" v-if="errors.due_date">{{
                    errors.due_date[0]
                  }}</small>
                </div>
              </div>
              <div class="form-group col-md-6">
                <label> Assign To </label>
                <div class="input-group">
                  <el-select
                    class="w-100"
                    v-if="u_store.all_users != null"
                    v-model="form.task_users"
                    multiple
                    filterable
                    collapse-tags
                    collapse-tags-tooltip
                    size="large"
                    :max-collapse-tags="3"
                    placeholder="Select"
                  >
                    <el-option
                      v-for="item in u_store.all_users"
                      :key="item.id"
                      :label="item.name"
                      :value="item.id"
                    />
                  </el-select>
                  <small class="text-danger" v-if="errors.due_date">{{
                    errors.due_date[0]
                  }}</small>
                </div>
              </div>

              <div class="form-group col-md-6">
                <label> Task Status </label>
                <div class="input-group">
                  <el-select
                    class="w-100"
                    v-model="form.status_id"
                    clearable
                    size="large"
                    filterable
                    placeholder="Select Status"
                    v-if="s_store.all_status != null"
                  >
                    <el-option
                      v-for="item in s_store.all_status"
                      :key="item.id"
                      :label="item.name"
                      :value="item.id"
                    />
                  </el-select>
                  <small class="text-danger" v-if="errors.status_id">{{
                    errors.status_id[0]
                  }}</small>
                </div>
              </div>
              <div class="form-group col-md-12">
                <label> Description </label>
                <div class="input-group">
                  <el-input
                    v-model="form.description"
                    type="textarea"
                    placeholder="Task description"
                  />
                  <small class="text-danger" v-if="errors.description">{{
                    errors.description[0]
                  }}</small>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button
              @click.prevent="saveTask"
              class="btn btn--primary w-100 h-45"
              type="submit"
            >
              Submit
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { ElMessage } from "element-plus";
import { useUserStore } from "./../../store/users.js";
import { useTaskStore } from "./../../store/tasks.js";
import { useStatusStore } from "./../../store/status.js";

const s_store = useStatusStore();
const u_store = useUserStore();
const store = useTaskStore();

const props = defineProps({
  form: Object,
  action: String,
});

const errors = ref({});

const closeBtn = () => {
  errors.value = {};
};

const saveTask = async () => {
  if (props.action == "Create") {
    let response = await store.addTask(props.form);

    if (response == true) {
      ElMessage({
        message: "Task created successfully",
        grouping: true,
        type: "success",
      });

      document.getElementById("closeBtn").click();
    } else {
      errors.value = response.data.errors;
    }
  } else {
    let response = await store.editTask(props.form);

    if (response == true) {
      ElMessage({
        message: "Task updated successfully",
        grouping: true,
        type: "success",
      });

      document.getElementById("closeBtn").click();
    } else {
      errors.value = response.data.errors;
    }
  }
};

onMounted(() => {
  u_store.getUsers();
  s_store.getStatus();
});
</script>

<style>
</style>
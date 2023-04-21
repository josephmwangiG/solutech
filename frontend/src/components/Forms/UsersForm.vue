<template>
  <div class="modal" id="formModal" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ action }} User</h5>
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
                <label>Name</label>
                <el-input
                  v-model="form.name"
                  type="text"
                  size="large"
                  placeholder="User Name"
                  required
                />
                <small class="text-danger" v-if="errors.name">{{
                  errors.name[0]
                }}</small>
              </div>
              <div class="form-group col-md-6">
                <label> Email </label>
                <div class="input-group">
                  <el-input
                    v-model="form.email"
                    type="email"
                    size="large"
                    required
                    placeholder="User Email"
                  />
                  <small class="text-danger" v-if="errors.email">{{
                    errors.email[0]
                  }}</small>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button
              @click.prevent="saveUser"
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
import { ref } from "vue";
import { ElMessage } from "element-plus";
import { useUserStore } from "./../../store/users.js";

const store = useUserStore();
const props = defineProps({
  form: Object,
  action: String,
});

const errors = ref({});

const closeBtn = () => {
  errors.value = {};
};

const saveUser = async () => {
  if (props.action == "Create") {
    let response = await store.addUser(props.form);

    if (response == true) {
      ElMessage({
        message: "User created successfully",
        grouping: true,
        type: "success",
      });

      document.getElementById("closeBtn").click();
    } else {
      errors.value = response.data.errors;
    }
  } else {
    let response = await store.editUser(props.form);

    if (response == true) {
      ElMessage({
        message: "User updated successfully",
        grouping: true,
        type: "success",
      });

      document.getElementById("closeBtn").click();
    } else {
      errors.value = response.data.errors;
    }
  }
};
</script>

<style>
</style>
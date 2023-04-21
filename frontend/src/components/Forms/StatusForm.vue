<template>
  <div class="modal" id="formModal" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ action }} Status</h5>
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
              <div class="form-group col-md-12">
                <label>Name</label>
                <el-input
                  v-model="form.name"
                  type="text"
                  size="large"
                  placeholder="Status Name"
                  required
                />
                <small class="text-danger" v-if="errors.name">{{
                  errors.name[0]
                }}</small>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button
              @click.prevent="saveStatus"
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
import { useStatusStore } from "./../../store/status.js";

const store = useStatusStore();
const props = defineProps({
  form: Object,
  action: String,
});

const errors = ref({});

const closeBtn = () => {
  errors.value = {};
};

const saveStatus = async () => {
  if (props.action == "Create") {
    let response = await store.addStatus(props.form);

    if (response == true) {
      ElMessage({
        message: "Status created successfully",
        grouping: true,
        type: "success",
      });

      document.getElementById("closeBtn").click();
    } else {
      errors.value = response.data.errors;
    }
  } else {
    let response = await store.editStatus(props.form);

    if (response == true) {
      ElMessage({
        message: "Status updated successfully",
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
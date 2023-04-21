<template>
  <div class="modal" id="confirmModal" role="dialog" tabindex="-1">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ alert }}</h5>
          <button
            class="close"
            data-bs-dismiss="modal"
            type="button"
            aria-label="Close"
          >
            <i class="las la-times"></i>
          </button>
        </div>

        <div class="modal-body">
          <p class="question">{{ message }}</p>
        </div>
        <div class="modal-footer">
          <button
            @click="emits('confirm', false)"
            class="btn btn--dark"
            data-bs-dismiss="modal"
            type="button"
          >
            Cancel
          </button>
          <button
            @click="emits('confirm', true)"
            class="btn btn--primary"
            data-bs-dismiss="modal"
          >
            Confirm
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  message: String,
  alert: String,
});

const emits = defineEmits(["confirm"]);
</script>

<style>
</style>
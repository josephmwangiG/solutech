<script setup>
import { ref } from 'vue'
import Sidebar from "./Shared/Sidebar.vue"

defineProps({
})

const open = ref(true)
</script>

<template>
  <div class="page-wrapper default-version">
    <Sidebar />
    <router-view></router-view>
  </div>
</template>

<template>
  <div class="body-wrapper">
    <div class="bodywrapper__inner">
      <div
        class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
      >
        <h6 class="page-title">Dashboard</h6>
        <div
          class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins"
        ></div>
      </div>
      <div class="row" v-if="store.tasks != null">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="row mt-3">
                <div class="col-md-6">
                  <apexchart
                    width="100%"
                    type="bar"
                    :options="options"
                    :series="series"
                    v-if="options != null"
                  ></apexchart>
                </div>
                <div class="col-md-6">
                  <apexchart
                    height="380"
                    width="100%"
                    type="donut"
                    v-if="donutSeries != null"
                    :options="donutOptions"
                    :series="donutSeries"
                  ></apexchart>
                </div>
              </div>
              <div class="table-responsive--md table-responsive mt-3">
                <div
                  class="d-flex mb-30 flex-wrap gap-3 justify-content-between align-items-center"
                >
                  <h6 class="page-title">Recent Tasks</h6>
                  <div
                    class="d-flex flex-wrap justify-content-end gap-2 align-items-center breadcrumb-plugins"
                  >
                    <router-link :to="{ name: 'tasks' }">
                      <button
                        class="btn btn-sm btn-outline--primary add-plan"
                        type="button"
                      >
                        <i class="la la-paper-plane"></i>All Tasks
                      </button></router-link
                    >
                  </div>
                </div>

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
    </div>
    <!-- bodywrapper__inner end -->
  </div>
</template>
<script setup>
import { ref, onMounted } from "vue";

import { useTaskStore } from "./../store/tasks.js";
import { useUserStore } from "./../store/users.js";

const store = useTaskStore();

const getData = (page) => {
  store.getTasks(page);
};

let options = ref(null);

let series = ref(null);

let donutOptions = ref({
  labels: ["Completed", "Pending", "Not Started", "Others"],
});
let donutSeries = ref(null);

onMounted(async () => {
  let response = await store.getTasks();

  if (response == true) {
    let category = [];
    let users = [];
    let pending = 0;
    let complete = 0;
    let not_started = 0;
    let others = 0;

    store.all_tasks.slice(0, 6).forEach((task) => {
      category.push(task.name);
      users.push(task.users.length);

      if (task.status.name == "not started") {
        not_started++;
      } else if (task.status.name == "pending") {
        pending++;
      } else if (task.status.name == "completed") {
        complete++;
      } else {
        others++;
      }
    });
    options.value = {
      chart: {
        id: "Tasks Assignment",
      },
      xaxis: {
        categories: category,
      },
    };

    series.value = [
      {
        name: "Users",
        data: users,
      },
    ];

    donutSeries.value = [complete, pending, not_started, others];
  }
  store.getUsers();
});
</script>
<style lang="">
</style>
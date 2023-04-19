<template>
  <div>
    <div :class="open ? 'sidebar bg--dark open' : 'sidebar bg--dark'">
      <button @click="open = false" class="res-sidebar-close-btn">
        <i class="las la-times"></i>
      </button>
      <div class="sidebar__inner">
        <div class="sidebar__logo">
          <router-link to="/" class="sidebar__main-logo"
            ><img height="50px" src="/logo.png" alt="image"
          /></router-link>
        </div>

        <div class="sidebar__menu-wrapper" id="sidebar__menuWrapper">
          <ul class="sidebar__menu">
            <li class="sidebar-menu-item">
              <router-link to="/" class="nav-link">
                <i class="menu-icon las la-home"></i>
                <span class="menu-title">Dashboard</span>
              </router-link>
            </li>

            <li class="sidebar-menu-item active">
              <router-link :to="{ name: 'users' }" class="nav-link">
                <i class="menu-icon las la-user-check"></i>
                <span class="menu-title">Users</span>
              </router-link>
            </li>

            <li class="sidebar-menu-item">
              <router-link :to="{ name: 'users' }" class="nav-link">
                <i class="menu-icon las la-paper-plane"></i>
                <span class="menu-title">Tasks</span>
              </router-link>
            </li>

            <li class="sidebar-menu-item">
              <router-link :to="{ name: 'users' }" class="nav-link">
                <i class="menu-icon las la-life-ring"></i>
                <span class="menu-title">Task Status</span>
              </router-link>
            </li>

            <li class="sidebar-menu-item sidebar-dropdown">
              <a href="javascript:void(0)" class="">
                <i class="menu-icon la la-list"></i>
                <span class="menu-title">Reports</span>

                <span class="menu-badge pill bg--danger ms-auto">
                  <i class="fa fa-exclamation"></i>
                </span>
              </a>
              <div class="sidebar-submenu sidebar-submenu__open">
                <ul>
                  <li class="sidebar-menu-item">
                    <router-link
                      to="https://script.viserlab.com/mlmlab/admin/users/active"
                      class="nav-link"
                    >
                      <i class="menu-icon las la-dot-circle"></i>
                      <span class="menu-title">Users</span>
                    </router-link>
                  </li>
                  <li class="sidebar-menu-item">
                    <router-link
                      to="https://script.viserlab.com/mlmlab/admin/users/banned"
                      class="nav-link"
                    >
                      <i class="menu-icon las la-dot-circle"></i>
                      <span class="menu-title">Tasks</span>
                    </router-link>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
          <div class="text-center mb-3 text-uppercase">
            <span class="text--primary">SOLUTECH</span>
            <span class="text--success">TASK </span>
          </div>
        </div>
      </div>
    </div>
    <nav class="navbar-wrapper bg--dark">
      <div class="navbar__left">
        <button
          type="button"
          @click="open = true"
          class="res-sidebar-open-btn me-3"
        >
          <i class="las la-bars"></i>
        </button>
        <form class="navbar-search">
          <input
            type="search"
            name="#0"
            class="navbar-search-field"
            id="searchInput"
            autocomplete="off"
            placeholder="Search here..."
          />
          <i class="las la-search"></i>
          <ul class="search-list"></ul>
        </form>
      </div>
      <div class="navbar__right">
        <ul class="navbar__action-list">
          <li class="dropdown">
            <button
              type="button"
              class="primary--layer"
              data-bs-toggle="dropdown"
              data-display="static"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <i class="las la-bell text--primary icon-left-right"></i>
            </button>
            <div
              class="dropdown-menu dropdown-menu--md p-0 border-0 box--shadow1 dropdown-menu-right"
            >
              <div class="dropdown-menu__header">
                <span class="caption">Notification</span>
                <p>You have 0 notification</p>
              </div>
              <div class="dropdown-menu__body">
                <a href="#" class="dropdown-menu__item">
                  <div class="navbar-notifi">
                    <div
                      class="navbar-notifi__left bg--green b-radius--rounded"
                    >
                      <img
                        src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                        alt="Profile Image"
                      />
                    </div>
                    <div class="navbar-notifi__right">
                      <h6 class="notifi__title">New member registered</h6>
                      <span class="time"
                        ><i class="far fa-clock"></i> 14 hours ago</span
                      >
                    </div>
                  </div>
                  <!-- navbar-notifi end -->
                </a>
              </div>
              <div class="dropdown-menu__footer">
                <a href="#" class="view-all-message">View all notification</a>
              </div>
            </div>
          </li>

          <li class="dropdown">
            <button
              type="button"
              class=""
              data-bs-toggle="dropdown"
              data-display="static"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <span class="navbar-user">
                <span class="navbar-user__thumb"
                  ><img
                    src="https://script.viserlab.com/mlmlab/assets/admin/images/profile/6379b33c94bd11668920124.jpg"
                    alt="image"
                /></span>
                <span class="navbar-user__info">
                  <span class="navbar-user__name">admin</span>
                </span>
                <span class="icon"
                  ><i class="las la-chevron-circle-down"></i
                ></span>
              </span>
            </button>
            <div
              class="dropdown-menu dropdown-menu--sm p-0 border-0 box--shadow1 dropdown-menu-right"
            >
              <a
                href="#"
                class="dropdown-menu__item d-flex align-items-center px-3 py-2"
              >
                <i class="dropdown-menu__icon las la-user-circle"></i>
                <span class="dropdown-menu__caption">Profile</span>
              </a>

              <a
                href="#"
                class="dropdown-menu__item d-flex align-items-center px-3 py-2"
              >
                <i class="dropdown-menu__icon las la-key"></i>
                <span class="dropdown-menu__caption">Password</span>
              </a>

              <a
                href="#"
                class="dropdown-menu__item d-flex align-items-center px-3 py-2"
              >
                <i class="dropdown-menu__icon las la-sign-out-alt"></i>
                <span class="dropdown-menu__caption">Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>
<script setup>
import { ref } from "vue";
let open = ref(null);
</script>
<style lang="">
</style>
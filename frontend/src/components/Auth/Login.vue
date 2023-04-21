<template>
  <div>
    <div class="overlayer" id="overlayer" style="display: none">
      <div class="loader">
        <div class="loader-inner"></div>
      </div>
    </div>

    <header class="header-bottom fixed-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-white">
            <div class="header-area">
              <div class="logo">
                <a href="#"
                  ><img src="/logo.png" style="height: 40px" alt="logo"
                /></a>
              </div>
              <ul class="menu text-white">
                <li><a href="#" style="color: white">Home</a></li>

                <li class="menu-item-has-children">
                  <a href="javascript:void(0)" style="color: white">Account</a>
                  <ul class="submenu">
                    <li>
                      <router-link to="/login">Log In</router-link>
                    </li>
                  </ul>
                </li>
              </ul>

              <div class="header-bar d-lg-none">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section class="account-section my-5">
      <div class="container">
        <div class="account-wrapper">
          <div class="signup-area account-area">
            <div class="row m-0 flex-wrap-reverse">
              <div class="col-lg-6 p-0">
                <div
                  class="change-catagory-area bg_img"
                  data-background="https://script.viserlab.com/mlmlab/assets/images/frontend/login/63821b0737fa81669470983.jpg"
                  style="
                    background-image: url('https://script.viserlab.com/mlmlab/assets/images/frontend/login/63821b0737fa81669470983.jpg');
                  "
                >
                  <h4 class="title">Welcome To SOLUTECH</h4>
                  <p>Enter your email and password to login.</p>
                  <a class="custom-button account-control-button" href="#"
                    >Register Now</a
                  >
                </div>
              </div>
              <div class="col-lg-6 p-0">
                <div class="common-form-style bg-one login-account">
                  <h4 class="title">Login</h4>
                  <p class="mb-sm-4 mb-3">
                    To login into the site please enter your email and password
                  </p>
                  <form
                    class="create-account-form verify-gcaptcha"
                    method="post"
                  >
                    <div class="form-group">
                      <el-label class="py-2 required" for="email"
                        >Email</el-label
                      >
                      <el-input
                        v-model="form.email"
                        type="email"
                        size="large"
                        required
                        id="email"
                        placeholder="Email Address"
                      />
                    </div>
                    <div class="form-group">
                      <el-label class="py-2 required" for="password"
                        >Password</el-label
                      >
                      <el-input
                        id="password"
                        type="password"
                        required
                        placeholder="Enter your password"
                        size="large"
                        v-model="form.password"
                      />
                    </div>

                    <div
                      class="form-group d-flex justify-content-between flex-wrap"
                    >
                      <div class="form--check">
                        <input
                          class="form-check-input"
                          id="remember"
                          name="remember"
                          type="checkbox"
                        />
                        <label class="form-check-label" for="remember"
                          >Remember Me</label
                        >
                      </div>
                      <a
                        class="text--base"
                        href="https://script.viserlab.com/mlmlab/user/password/reset"
                        >Forget Password?</a
                      >
                    </div>

                    <div class="form-group mb-0">
                      <input
                        class="w-100 mt-0"
                        @click.prevent="login"
                        type="submit"
                        value="Login"
                      />
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from "vue";
import axios from "axios";
import { useRouter } from "vue-router";

const router = useRouter();

router.beforeEach((to, from) => {
  if (localStorage.getItem("access_token") != null) {
  }
});

let form = ref({
  email: "admin@gmail.com",
  password: "password",
});

const login = () => {
  axios
    .post("/signin", form.value)
    .then((response) => {
      localStorage.setItem("access_token", response.data.access_token);
      router.push("/");
    })
    .catch((error) => {})
    .finally(() => {});
};
</script>

<style>
</style>
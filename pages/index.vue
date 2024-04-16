<template>
  <v-container>
    <v-row no-gutters justify="space-between">
      <v-col class="mr-3">
        <v-card title="Sign in" height="500">
          <v-sheet class="mx-auto" width="300">
            <v-form @submit.prevent>
              <v-text-field v-model="username" :rules="rules" label="Username"></v-text-field>
              <v-text-field v-model="password" :rules="rules" label="password" type="password"></v-text-field>
              <v-btn class="mt-2 mb-5" type="submit" block @click="login()">Submit</v-btn>
            </v-form>
          </v-sheet>
        </v-card>
      </v-col>
      <v-col>
        <v-card title="Sign up" height="500">
          <v-row no-gutters justify="center">
            <v-btn>
              <NuxtLink to="/sign_up" class="text-decoration-none text-black">Sign Up</NuxtLink>
            </v-btn>
          </v-row>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    username: "",
    password: "",
    rules: [
      (value) => {
        if (value) return true;

        return "You must enter a value.";
      },
    ],
  }),
  methods: {
    login() {
      if (this.username === "admin" && this.password === "admin") {
        navigateTo("/product");
      } else {
        alert("Invalid username or password");
      }
    },
  },
};
</script>

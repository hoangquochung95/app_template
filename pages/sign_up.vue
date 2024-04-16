<template>
  <v-container fluid>
    <v-card>
      <v-sheet class="mx-auto" width="300">
            <v-form @submit.prevent>
              <v-text-field
                v-model="firstName"
                :rules="rules"
                label="First Name"
              ></v-text-field>
              <v-text-field
                v-model="lastName"
                :rules="rules"
                label="Last Name"
              ></v-text-field>
              <v-text-field
                v-model="username"
                :rules="rules"
                label="Username"
              ></v-text-field>
              <v-text-field
                v-model="password"
                :rules="rules"
                label="Password"
                type="password"
              ></v-text-field>
              <v-btn class="mt-2 mb-5" type="submit" block>Submit</v-btn>
            </v-form>
          </v-sheet>
    </v-card>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    username: "",
    password: "",
    firstName: "",
    lastName: "",
    rules: [
      (value) => {
        if (value) return true;

        return "You must enter a first name.";
      },
    ],
  }),
};
</script>

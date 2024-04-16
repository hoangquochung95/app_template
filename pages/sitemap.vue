<template>
  <v-container fluid>
    <v-card class="mx-auto" subtitle="The #1 Vue UI Library" width="400">
      <template v-slot:title>
        <span class="font-weight-black">Welcome to Vuetify</span>
      </template>

      <v-card-text class="bg-surface-light pt-4">
        <v-img :width="300" aspect-ratio="16/9" cover src="/img/logo.png"></v-img>
      </v-card-text>
    </v-card>
  </v-container>
</template>

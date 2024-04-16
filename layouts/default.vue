<template>
  <div>
    <v-layout>
      <v-app-bar density="compact" color="teal-darken-4">
        <template v-slot:prepend>
          <v-img
            :width="50"
            aspect-ratio="16/9"
            cover
            src="/img/logo.png"
          ></v-img>
        </template>

        <template v-slot:append>
          <NuxtLink to="/" class="text-decoration-none text-white">Home</NuxtLink>
          <NuxtLink to="/products" class="text-decoration-none text-white ml-3">Product</NuxtLink>
          <NuxtLink to="/about" class="text-decoration-none text-white ml-3">About</NuxtLink>
          <NuxtLink to="/sign_up" class="text-decoration-none text-white ml-3">Sign up</NuxtLink>
          <NuxtLink to="/sitemap" class="text-decoration-none text-white ml-3">Sitemap</NuxtLink>
        </template>
        <v-app-bar-title>Apps</v-app-bar-title>
      </v-app-bar>
      <!-- <AppHeader /> -->
      <v-main>
        <slot />
      </v-main>
    </v-layout>
  </div>
</template>

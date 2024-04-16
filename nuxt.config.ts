// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  app: {
    head: {
      charset: "utf-8",
      viewport: "width=device-width, initial-scale=1",
      title:"Apps dashboard"
    }
  },
  devServer: {
    port: 4000
  },
  devtools: { enabled: true },
  ssr: false,
  modules: [
    '@invictus.codes/nuxt-vuetify'
  ],
  components: [
    {
      path: "~/components/",
      prefix: "App",
      extensions: [".vue"],
    },
    {
      path: "~/pages/",
      extensions: [".vue"],
    },
  ],
})

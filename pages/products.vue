<template>
  <v-container fruid>
    <v-row no-gutters justify="space-between" v-for="m in 3">
      <v-col v-for="n in 3" :key="n" cols="12" sm="4">
        <v-sheet class="ma-2 pa-2">
          <v-card @click="  navigateTo(`/product/${m}_${n}`) ">
            <template v-slot:title>
              Product name
            </template>

            <template v-slot:subtitle>
              3$
            </template>

            <template v-slot:text>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi, ratione debitis quis est labore
              voluptatibus!
            </template>
          </v-card>
        </v-sheet>
      </v-col>
    </v-row>
  </v-container>
</template>

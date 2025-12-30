<script setup lang="ts">
const mobileMenu = defineModel<boolean>("mobileMenu", {
   required: false,
   default: false,
})

const menu = $appMenu().filter((item) => item.key !== "logo")
</script>

<template>
   <nav class="container space-y-8 py-12">
      <div
         v-for="item in menu"
         class=""
      >
         <NuxtLink @click="mobileMenu = false">
            <div class="text-2xl">
               {{ item.label }}
            </div>
         </NuxtLink>
      </div>
   </nav>
</template>

<script setup lang="ts">
const menu = $appMenu()
const mobileMenu = defineModel<boolean>("mobileMenu", {
   required: false,
   default: false,
})
</script>

<template>
   <header class="border-foreground border-b">
      <div class="container h-(--header-height-sm) md:h-(--header-height)">
         <nav class="hidden h-full items-stretch justify-between md:flex">
            <template v-for="item in menu">
               <div class="flex h-full items-center">
                  <NuxtLink
                     v-if="item.key == 'nav'"
                     to="/"
                  >
                     {{ item.label }}
                  </NuxtLink>
                  <span
                     v-else
                     class="text-2xl font-semibold"
                  >
                     Vrewa
                  </span>
               </div>
            </template>
         </nav>
         <div class="flex h-full items-stretch justify-between md:hidden">
            <div class="flex h-full items-center">
               <span class="text-lg font-semibold"> Vrewa </span>
            </div>
            <div class="flex h-full items-center">
               <button
                  class="py-2"
                  @click="mobileMenu = !mobileMenu"
               >
                  Menu
               </button>
            </div>
         </div>
      </div>
   </header>
</template>

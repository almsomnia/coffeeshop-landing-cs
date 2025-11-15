<script setup lang="ts">
const menu = $appMenu()
</script>

<template>
   <header class="border-b border-foreground">
      <div class="container h-(--header-height)">
         <nav class="flex h-full items-stretch justify-between">
            <template v-for="item in menu">
               <div class="flex h-full items-center">
                  <NuxtLink
                     v-if="item.key == 'nav'"
                     to="/"
                  >
                     {{ item.label }}
                  </NuxtLink>
                  <span v-else class="text-2xl font-semibold">
                     Vrewa
                  </span>
               </div>
            </template>
         </nav>
      </div>
   </header>
</template>

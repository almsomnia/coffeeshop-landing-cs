<script setup lang="ts">
const menu = computed(() => $appMenu().filter((item) => item.key == "nav"))
</script>

<template>
   <footer class="border-foreground border-t">
      <div class="container">
         <div class="my-16 flex justify-between">
            <div class="">
               <ul class="list-none [&_li:not(:last-child)]:mb-4">
                  <li v-for="item in menu">
                     <NuxtLink to="/">
                        {{ item.label }}
                     </NuxtLink>
                  </li>
               </ul>
            </div>
            <div class="w-2/5">
               <p class="mb-8">Sign up for our latest promos</p>
               <div class="relative">
                  <input
                     type="text"
                     class="border-foreground w-full rounded-full border px-5 py-2.5 pe-32 focus:outline-0"
                     placeholder="Your email"
                  />
                  <button
                     class="absolute inset-y-0 right-0 flex cursor-pointer items-center justify-between px-5"
                  >
                     Subscribe
                     <span class="heroicons--arrow-right ms-1" />
                  </button>
               </div>
            </div>
         </div>
      </div>
      <div class="flex items-center justify-center mb-4">
         <span class="text-sm">
            &copy; 2025 Vrewa. All Rights Reserved.
         </span>
      </div>
   </footer>
</template>

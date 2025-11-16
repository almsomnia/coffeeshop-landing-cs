<script setup lang="ts">
const menu = computed(() => $appMenu().filter((item) => item.key == "nav"))
</script>

<template>
   <footer class="border-foreground border-t">
      <div class="container">
         <div
            class="my-16 flex flex-col-reverse justify-between gap-12 md:flex-row md:gap-0"
         >
            <div class="">
               <ul class="list-none [&_li:not(:last-child)]:mb-4">
                  <li v-for="item in menu">
                     <NuxtLink to="/">
                        {{ item.label }}
                     </NuxtLink>
                  </li>
               </ul>
            </div>
            <div class="md:w-2/5">
               <p class="mb-4 md:mb-8">Sign up for our latest promos</p>
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
      <div class="mb-4 flex items-center justify-center">
         <span class="text-sm"> &copy; 2025 Vrewa. All Rights Reserved. </span>
      </div>
   </footer>
</template>

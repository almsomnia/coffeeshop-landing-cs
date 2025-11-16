<template>
   <div>
      <div class="space-y-24">
         <div class="flex flex-col">
            <div class="md:w-3/4 lg:w-1/2">
               <p class="mb-4 md:mb-12 text-lg md:text-2xl font-medium text-pretty">
                  Fresh-roasted every week. Always 100% premium beans. Always
                  bold flavor.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-full md:w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/coffee-beans.jpg"
                  :quality="50"
                  format="webp"
                  loading="lazy"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="ms-auto md:w-3/4 lg:w-1/2">
               <p class="mb-4 md:mb-12 text-end text-lg md:text-2xl font-medium text-pretty">
                  Highly trained baristas, crafting every drink with precision
                  and ready to spoil your taste buds.
               </p>
            </div>
            <div class="aspect-3/2 w-full md:w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/barista.jpg"
                  :quality="50"
                  format="webp"
                  loading="lazy"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="md:w-3/4 lg:w-1/2">
               <p class="mb-4 md:mb-12 text-lg md:text-2xl font-medium text-pretty">
                  The perfect place to work, unwind, and capture your aesthetic moments.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-full md:w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/coffee-shop.jpg"
                  :quality="50"
                  format="webp"
                  loading="lazy"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
      </div>
   </div>
</template>

<template>
   <div>
      <div class="space-y-24">
         <div class="flex flex-col">
            <div class="w-1/2">
               <p class="mb-12 text-2xl font-semibold text-pretty">
                  Fresh-roasted every week. Always 100% premium beans. Always
                  bold flavor.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/coffee-beans.jpg"
                  :quality="50"
                  format="webp"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="ms-auto w-1/2">
               <p class="mb-12 text-end text-2xl font-semibold text-pretty">
                  Highly trained baristas, crafting every drink with precision
                  and ready to spoil your taste buds.
               </p>
            </div>
            <div class="aspect-3/2 w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/barista.jpg"
                  :quality="50"
                  format="webp"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="w-1/2">
               <p class="mb-12 text-2xl font-semibold text-pretty">
                  The perfect place to work, unwind, and capture your aesthetic moments.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-2/3 overflow-hidden">
               <NuxtImg
                  src="/img/coffee-shop.jpg"
                  :quality="50"
                  format="webp"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
      </div>
   </div>
</template>

<template>
   <div>
      <div class="space-y-16 md:space-y-36">
         <div class="flex flex-col">
            <div class="md:w-3/4 lg:w-1/2">
               <p
                  class="mb-4 text-lg font-medium text-pretty md:mb-12 md:text-2xl"
               >
                  Fresh-roasted every week. Always 100% premium beans. Always
                  bold flavor.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-full overflow-hidden md:w-2/3">
               <NuxtImg
                  src="/img/coffee-beans.jpg"
                  alt="A flat lay showing the coffee process: roasted beans, ground coffee in a portafilter, and a finished cup of latte art on a wooden board."
                  :quality="50"
                  format="webp"
                  loading="lazy"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="ms-auto md:w-3/4 lg:w-1/2">
               <p
                  class="mb-4 text-end text-lg font-medium text-pretty md:mb-12 md:text-2xl"
               >
                  Highly trained baristas, crafting every drink with precision
                  and ready to spoil your taste buds.
               </p>
            </div>
            <div class="aspect-3/2 w-full overflow-hidden md:w-2/3">
               <NuxtImg
                  src="/img/barista.jpg"
                  alt="Close-up of a barista pouring latte art in a white ceramic cup."
                  :quality="50"
                  format="webp"
                  loading="lazy"
                  class="h-full w-full object-cover"
               />
            </div>
         </div>
         <div class="flex flex-col">
            <div class="md:w-3/4 lg:w-1/2">
               <p
                  class="mb-4 text-lg font-medium text-pretty md:mb-12 md:text-2xl"
               >
                  The perfect place to work, unwind, and capture your aesthetic
                  moments.
               </p>
            </div>
            <div class="ms-auto aspect-3/2 w-full overflow-hidden md:w-2/3">
               <NuxtImg
                  src="/img/coffee-shop.jpg"
                  alt="Rustic cafe interior with natural lighting, green armchairs, and indoor plants."
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

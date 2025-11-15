<template>
   <div>
      <NuxtRouteAnnouncer />
      <NuxtLayout>
         <div class="container">
            <div class="w-2/3 mb-16">
               <h2 class="font-semibold tracking-wide text-6xl uppercase text-balance">
                  Enjoy a Sip of Happiness Every Day
               </h2>
            </div>
            <div class="">
               <NuxtImg
                  src="/img/hero.jpg"
                  :quality="50"
                  format="webp"
                  class="w-full h-full"
               />
            </div>
         </div>
      </NuxtLayout>
   </div>
</template>

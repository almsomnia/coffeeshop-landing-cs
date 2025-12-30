<script setup lang="ts">
useSeoMeta({
   title: "Vrewa | Best Coffee Shop Around",
   description: "Enjoy high-quality coffee & comfy place at Vrewa."
})

useHead({
   htmlAttrs: {
      lang: "en"
   },
   link: [
      {
         rel: "icon",
         href: "/favicon.ico"
      }
   ]
})
</script>

<template>
   <div>
      <NuxtRouteAnnouncer />
      <NuxtLayout>
         <div class="space-y-24 md:space-y-48">
            <SectionHero class="container" />
            <SectionBenefit class="container" />
            <SectionMenu class="container" />
         </div>
      </NuxtLayout>
   </div>
</template>

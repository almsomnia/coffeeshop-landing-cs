<script setup lang="ts">
const categories = [
   { label: "All menu", value: undefined },
   { label: "Coffee", value: "coffee" },
   { label: "Non Coffee", value: "non-coffee" },
   { label: "Foods", value: "foods" },
] as const
const selectedCategory = shallowRef<(typeof categories)[number]["value"]>()

const menu = [
   {
      name: "Cappuccino",
      category: "coffee",
      price: 25000,
      img: "/img/menu/cappuccino.jpg",
   },
   {
      name: "Croissant",
      category: "foods",
      price: 30000,
      img: "/img/menu/croissant.jpg",
   },
   {
      name: "Affogato",
      category: "coffee",
      price: 35000,
      img: "/img/menu/affogato.jpg",
   },
   {
      name: "Lemon Tea",
      category: "non-coffee",
      price: 23000,
      img: "/img/menu/lemon-tea.jpg",
   },
] as const

const filteredMenu = computed(() => {
   if (!selectedCategory.value) return menu
   return menu.filter((item) => item.category == selectedCategory.value)
})

const formatPrice = (price: number) => {
   return Intl.NumberFormat("id-ID", {
      style: "currency",
      currency: "IDR",
      maximumFractionDigits: 0,
   }).format(price)
}
</script>

<template>
   <div>
      <div class="w-1/2">
         <p class="mb-12 text-4xl font-semibold text-pretty">
            Well-curated choices made with only high-quality ingredients.
         </p>
      </div>
      <div class="mb-8 flex items-center justify-between">
         <ul class="flex list-none gap-8 [&_li]:cursor-pointer">
            <li
               v-for="category in categories"
               @click="selectedCategory = category.value"
               :class="[
                  selectedCategory == category.value
                     ? 'font-medium underline'
                     : '',
               ]"
            >
               {{ category.label }}
            </li>
         </ul>
         <button
            class="border-foreground flex cursor-pointer items-center-safe rounded-full border px-4 py-2"
         >
            See All
            <span class="heroicons--arrow-right ms-1.5"></span>
         </button>
      </div>
      <div class="overflow-x-auto">
         <div class="flex items-center gap-12">
            <template v-for="item in filteredMenu">
               <div class="shrink-0">
                  <div class="overflow-hidden">
                     <NuxtImg
                        :src="item.img"
                        :quality="25"
                        class="aspect-2/3 h-auto w-[25vw] object-cover"
                     />
                  </div>
                  <div class="my-4">
                     <div class="font-medium">
                        {{ item.name }}
                     </div>
                     <div class="text-sm">
                        {{ formatPrice(item.price) }}
                     </div>
                  </div>
               </div>
            </template>
         </div>
      </div>
   </div>
</template>

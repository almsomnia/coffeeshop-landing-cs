<script setup lang="ts">
import type { LenisOptions } from "lenis"

const lenisOptions: LenisOptions = {
   duration: 1.5,
}

const { y, directions } = useScroll(document)
const header = useTemplateRef("header")

watch(
   [y, () => directions.top, () => directions.bottom],
   ([yVal, scrollingUp, scrollingDown]) => {
      if (!header.value) return

      const el = header.value.$el as HTMLElement
      const className = "-translate-y-full"

      if (yVal < 100 || scrollingUp) {
         el.classList.remove(className)
      } else if (scrollingDown) {
         el.classList.add(className)
      }
   }
)
</script>

<template>
   <AppHeader
      ref="header"
      class="bg-background fixed inset-x-0 top-0 z-999 transition-transform duration-800 ease-in-out"
   />
   <VueLenis
      root
      :options="lenisOptions"
   >
      <main class="min-h-screen">
         <div class="pt-[calc(var(--header-height)+4rem)] pb-16">
            <slot />
         </div>
      </main>
      <AppFooter />
   </VueLenis>
</template>

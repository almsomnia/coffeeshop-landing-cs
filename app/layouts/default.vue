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

      if (yVal < 100 || scrollingUp || mobileMenu.value) {
         el.classList.remove(className)
      } else if (scrollingDown) {
         el.classList.add(className)
      }
   }
)

const mobileMenu = shallowRef(false)
</script>

<template>
   <ClientOnly>
      <AppHeader
         ref="header"
         class="bg-background fixed inset-x-0 top-0 z-999 transition-transform duration-800 ease-in-out"
         v-model:mobile-menu="mobileMenu"
      />
      <Transition
         name="fade"
         mode="out-in"
      >
         <div
            v-if="mobileMenu"
            class="bg-background fixed inset-0 z-99 h-full w-full overflow-y-auto"
            data-lenis-prevent
         >
            <div class="mt-(--header-height-sm) md:mt-(--header-height)">
               <AppMobileMenu v-model:mobile-menu="mobileMenu" />
            </div>
         </div>
      </Transition>
   </ClientOnly>
   <VueLenis
      root
      :options="lenisOptions"
   >
      <main class="min-h-screen">
         <div class="pt-[calc(var(--header-height-sm)+4rem)] md:pt-[calc(var(--header-height)+4rem)] pb-32">
            <slot />
         </div>
      </main>
      <AppFooter />
   </VueLenis>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
   transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
   opacity: 0;
}
</style>

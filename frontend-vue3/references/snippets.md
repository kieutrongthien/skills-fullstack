# Vue 3 snippets

## Composition API setup
```ts
<script setup lang="ts">
import { ref, onMounted } from 'vue'

const items = ref<string[]>([])
const loading = ref(false)

onMounted(async () => {
  loading.value = true
  // fetch logic here
  loading.value = false
})
</script>
```

## Router (lazy)
```ts
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', component: () => import('@/views/HomeView.vue') },
  ],
})
```

## Pinia store
```ts
export const useCartStore = defineStore('cart', {
  state: () => ({ items: [] as Item[] }),
  getters: { total: (s) => s.items.reduce((t, i) => t + i.price, 0) },
  actions: {
    add(item: Item) { this.items.push(item) },
  },
})
```

## Forms
- Use `v-model` on controlled inputs.
- Validate client-side and show per-field errors.
- Surface API errors; disable submit while loading.

## HTTP client notes
- Wrap `fetch`/`axios` with a base URL, auth header injection, and error normalization.
- Centralize retry/backoff if needed.

# Vue 3 conventions

- Structure feature folders for pages/components/stores/composables; keep cross-cutting utilities under `src/lib` or `src/shared`.
- Routing: lazy-load views; use route meta for auth/roles; keep guards in router, not components.
- State: prefer Pinia for shared state; keep server state close to fetchers or use a query library; avoid overusing global stores.
- Components: use `<script setup>`; type props and emits; keep components small and focused; avoid implicit `any` and untyped emits.
- Styling: use design tokens/CSS variables; prefer scoped styles or CSS modules; avoid deep selectors; keep spacing/typography consistent.
- API: wrap HTTP in a client module; normalize errors and surface user-friendly messages; handle auth tokens centrally.
- Forms: use `v-model` and validation; show per-field errors; include loading/disabled states for submits.
- Testing: favor Vitest + Testing Library; cover loading/error/empty states; mock network calls at boundaries.
- Performance: lazy-load routes; keep watchers minimal; use computed values over manual mutation; prefer `defineAsyncComponent` for heavy children.
- Accessibility: semantic HTML first; manage focus on navigation/modals; ensure keyboard interaction and meaningful labels.

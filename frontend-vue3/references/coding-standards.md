# Vue 3 coding standards

- Keep components small and cohesive; extract logic to composables.
- Type everything (props, emits, store state/actions); avoid implicit `any`.
- Prefer Composition API with `<script setup>`; avoid options API unless required.
- Enforce lint/type/test/build before merge; use `scripts/dev-check.sh`.
- Handle errors and loading states explicitly; surface user-friendly messages.
- Avoid side effects in templates; keep async logic in setup/hooks.
- Accessibility first: semantic tags, focus management, keyboard support.

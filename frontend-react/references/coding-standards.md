# React coding standards

- Keep components focused; lift/share state via context only when necessary.
- Type props/state; avoid `any`; prefer discriminated unions for variants.
- Favor React Query for server state; avoid prop drilling via composition/context.
- Always cover loading/error/empty states; normalize API errors.
- Run lint/tests/type-check/build via `scripts/dev-check.sh` before merge.
- Use error boundaries for critical routes/sections.
- Accessibility: semantic HTML, labels, keyboard/focus management.

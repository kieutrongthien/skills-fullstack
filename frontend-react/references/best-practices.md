# React conventions

- Structure by feature; co-locate components, hooks, styles, and tests; keep shared utilities in `src/lib` or `src/shared`.
- Routing: use React Router data routers; lazy-load route elements; wrap with `Suspense` and error boundaries.
- State: prefer React Query for server state; keep local/UI state with `useState`/`useReducer`; use context for cross-cutting concerns; avoid unnecessary global stores.
- Components: type props; keep effects minimal and dependency arrays accurate; avoid derived state unless memoized; use stable keys for lists.
- Styling: use CSS modules or utility-first styles; centralize tokens (spacing, color, radius) for consistency.
- API: wrap fetch/axios in a client; normalize errors; handle auth tokens and retries centrally; treat `Promise` return types as typed.
- Forms: use `react-hook-form` + schema validation; show per-field errors; include optimistic/disabled states on submit.
- Testing: React Testing Library; assert on user-visible behavior; cover loading/error/empty; mock network at module boundary.
- Performance: lazy routes; memoize expensive selectors; prefer `useMemo`/`useCallback` only when needed; avoid prop drilling via context or composition.
- Accessibility: semantic HTML; keyboard access for interactive elements; manage focus on navigation/modals; provide aria labels for inputs/buttons.

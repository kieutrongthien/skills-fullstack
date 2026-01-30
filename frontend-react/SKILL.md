---
name: frontend-react
description: Build, maintain, and debug React frontends (TypeScript, Vite or CRA).
metadata: {"openclaw":{"emoji":"#️","requires":{"bins":["npm"]}}}
---

# Frontend - React

## When to use this skill
- Feature work or fixes in React apps using TypeScript.
- Creating components, routing, forms, state management, or API integration.
- Testing, linting, performance tuning, or accessibility improvements.

## Quick start
1. Install deps: `npm ci` (or project-standard package manager).
2. Env: copy `.env.example` -> `.env`; set `VITE_` or `REACT_APP_` vars per stack.
3. Dev: `npm run dev` (Vite) or `npm start` (CRA). Build: `npm run build`. Preview: `npm run preview` if Vite.
4. Quality: `npm run lint`; tests: `npm test` or `npm run test:unit` (Vitest/Jest).

## Project structure basics
- `src/main.tsx` or `src/index.tsx`: app bootstrap; wraps providers (router, store, query client).
- Routing: `react-router` with lazy `createBrowserRouter`/`Suspense` for code splitting.
- State: prefer React Query for server state; lightweight local state with hooks; global state with context or Zustand/Recoil as needed.
- UI components: keep props typed; avoid prop drilling via context where appropriate.

## Coding principles
- Keep components focused; lift/share state only when necessary; type everything.
- Treat loading/error/empty states as first-class; normalize API errors.
- Use error boundaries for critical sections; ensure suspense fallbacks exist for lazy routes.
- Enforce lint/type/test/build before merge (run `scripts/dev-check.sh`).

## Patterns and snippets
- Ready-to-use component, fetch, routing, and form patterns live in references/snippets.md.
- Centralize HTTP client (fetch/axios) for auth/error handling; prefer React Query for server state.
- Use `react-hook-form` + schema validation for forms; show per-field errors and disable submit while pending.

## Testing
- Component tests with Testing Library; assert on user-facing behavior, not internals.
- Mock network calls; verify loading/error/success states.

## Accessibility and UI
- Prefer semantic HTML; ensure labels for inputs; manage focus on navigation and modals.
- Support keyboard interactions; ensure color contrast; provide skip links if relevant.

## Bundled resources
- scripts/dev-check.sh: run before commit/PR to validate lint, type-check, tests, and build using the detected package manager.
- references/coding-standards.md: quick guardrails on component sizing, typing, error states, and pre-merge checks.
- references/best-practices.md: deeper guidance for structure, routing, state, API clients, styling, testing, performance, and a11y.
- references/snippets.md: component/data-fetch/form/routing patterns ready to copy.
- assets/pr-template.md: apply when opening PRs so reviewers get scope, testing proof, and UI evidence in a consistent format.

## Delivery checklist
- Lint, tests, and type checks pass.
- No stray console logs; env vars documented; API errors mapped to user-friendly messages.
- Routes lazy-loaded where beneficial; suspense fallbacks present; loading and empty states handled.

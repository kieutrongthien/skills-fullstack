---
name: backend-laravel
description: Build, maintain, and debug Laravel backends (API and web).
metadata: {"openclaw":{"emoji":"#️","requires":{"bins":["php", "composer"]}}}
---

# Backend - Laravel

## When to use this skill
- Creating APIs, controllers, routes, form requests, models, and migrations.
- Implementing authentication/authorization, validation, queues, notifications, or mail.
- Debugging performance, database queries, or request/response handling.

## Quick start
1. Install PHP deps: `composer install`.
2. Env: copy `.env.example` -> `.env`; set `APP_KEY` via `php artisan key:generate`; configure DB and queue.
3. Run migrations/seeders: `php artisan migrate --seed` (if seeders exist).
4. Serve: `php artisan serve` or via Sail/Valet; tests: `php artisan test`; quality: `composer lint` if defined.

## Project structure basics
- Routes: `routes/api.php` for stateless APIs; `routes/web.php` for web routes with sessions.
- Controllers: thin; push business logic into services/actions; type-hint dependencies for auto DI.
- Form Requests: validate/authorize input; keep controllers lean.
- Models and Eloquent: define fillable/guarded; relationships and scopes for query reuse.
- Migrations/Seeders: keep schema in migrations; seed minimal fixtures for dev/test.

## Coding principles
- Keep controllers thin; validate/authorize via Form Requests; push logic to services/actions.
- Normalize errors in exception handler; avoid leaking internals; include request IDs in logs.
- Secure by default: policies/gates for authz, hashed secrets, avoid logging sensitive data.
- Handle migrations carefully; prefer reversible changes and minimal seeds for tests.
- Enforce tests and available lint/static tools before merge (run `scripts/dev-check.sh`).

## Patterns and snippets
- API route, Form Request, controller, queue, and caching templates live in references/snippets.md.
- Use resources/transformers to keep API shapes consistent; eager-load to avoid N+1.

## Security and auth
- Use Laravel Sanctum/Passport for API auth; hash secrets; never log credentials.
- Authorize actions via policies or gates; ensure middleware protects routes.

## Error handling and logging
- Customize exception rendering in `app/Exceptions/Handler.php`; map validation and domain errors clearly.
- Use structured logs; include request IDs for tracing.

## Testing
- Use Pest or PHPUnit; feature tests for HTTP flows, unit tests for services.
- Refresh DB between tests (`RefreshDatabase` trait); seed only necessary data.

## Bundled resources
- scripts/dev-check.sh: run before commit/PR; installs Composer deps if needed, then runs tests and any defined lint/pint/phpstan scripts to catch issues early.
- references/coding-standards.md: quick guardrails for controllers/services, validation, Eloquent usage, error handling, and security.
- references/best-practices.md: deeper guidance for routing, controllers, validation, Eloquent, caching, security, and testing.
- references/snippets.md: templates for routes, Form Requests, controllers, queues, and caching patterns.
- assets/pr-template.md: PR checklist for tests, migrations, and API/resource consistency.
- assets/migration-checklist.md: use when adding schema changes to ensure safety and communication.

## Delivery checklist
- Migrations up; env configured; queues and caches warmed.
- Tests and lints pass; no debug code; errors mapped to API-friendly JSON.
- Resources/transformers return consistent shapes; pagination and sorting documented.

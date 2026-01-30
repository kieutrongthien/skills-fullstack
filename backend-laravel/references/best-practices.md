# Laravel conventions

- Routing: keep APIs in `routes/api.php` and web routes in `routes/web.php`; apply middleware (auth, throttle) at route group level.
- Controllers: keep thin; push logic into services/actions; type-hint dependencies for DI; return resources for API shape consistency.
- Validation: use Form Requests for validation and authorization; never trust raw input; reuse rules via rules objects when needed.
- Models/Eloquent: define relationships and scopes; guard attributes; eager-load to avoid N+1; prefer value objects/casts for domain data.
- Migrations/seeders: keep schema changes additive and reversible; seed minimal fixtures for tests; avoid seeding heavy data in prod.
- Queues/events: offload slow work to jobs/listeners; ensure queue driver matches environment; monitor failed jobs.
- Caching: use cache tags/remember for hot reads; invalidate on writes; store config/cache optimizations for prod deployments.
- Security: use Sanctum/Passport for API auth; hash secrets; avoid logging sensitive data; enforce policies/gates for authz.
- Errors/logging: customize exception handler; map validation/domain errors; include request IDs and context in logs.
- Testing: prefer Pest/PHPUnit feature tests for HTTP flows; reset DB per suite; use factories and test helpers; keep assertions on outputs/contracts.

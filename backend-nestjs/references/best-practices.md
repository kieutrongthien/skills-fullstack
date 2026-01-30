# NestJS conventions

- Modules: keep them feature-scoped; export only what is shared; avoid circular dependencies.
- DTOs: always validate inputs with `class-validator`; transform payloads; prefer explicit DTOs for responses when shapes differ from entities.
- Controllers: thin and transport-focused; delegate to services; shape HTTP/GraphQL contracts clearly.
- Services: hold business logic; keep data access in repositories/ORM models; prefer transactions for multi-step writes.
- Config: centralize in a config module; validate env with Joi; avoid direct `process.env` reads outside config providers.
- Errors: use filters/interceptors to normalize errors; map domain errors to HTTP codes; avoid leaking internal messages.
- Auth: use guards for authz; strategies for authn; issue tokens securely; hash secrets and scrub sensitive logs.
- Logging/observability: add request IDs; structured logs; consider interceptors for timing/metrics; expose health checks.
- Testing: unit-test providers with fakes; e2e through `@nestjs/testing` and supertest; seed/reset DB per test suite.
- Performance: enable gzip; cache hot GETs when valid; prefer pagination for large queries; avoid N+1 (use joins or loaders).

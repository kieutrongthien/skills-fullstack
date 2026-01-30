# NestJS coding standards

- Keep controllers thin; business logic in services; data access in repos/ORM layers.
- Validate all inputs with DTOs + class-validator; transform payloads explicitly.
- Avoid direct `process.env`; use config module with validation.
- Normalize errors with filters/interceptors; log with request IDs; avoid leaking secrets.
- Tests: unit for providers, e2e for HTTP/GraphQL flows; reset DB between suites when applicable.
- Enforce lint/format/tests/type-check/build via `scripts/dev-check.sh` before merge.

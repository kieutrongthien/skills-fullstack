# Go backend best practices (Gin/Echo)

- Routing: group routes by feature; use middlewares for auth/logging/recovery; prefer versioned API paths.
- Middleware: recovery with structured error response; request ID injection; logging with duration and status; CORS configured explicitly.
- DI/config: initialize config struct with env vars; validate required fields; inject dependencies into handlers/services.
- Persistence: use context-aware DB clients; set timeouts; prefer migrations and migration tooling; keep repositories thin.
- Error handling: map domain errors to HTTP codes; return JSON error envelope (`code`, `message`, `requestId`).
- Observability: metrics for latency/status counts; traces where available; log correlation IDs.
- Performance: avoid unnecessary allocations; reuse HTTP clients; stream responses when large; benchmark hot paths when needed.
- Security: validate inputs; limit body sizes; sanitize logs; enforce TLS in prod; protect sensitive endpoints with authz; set sensible timeouts.
- Testing: table-driven tests; httptest for handlers; integration tests for DB; use mocks/fakes for services; keep fixtures small.

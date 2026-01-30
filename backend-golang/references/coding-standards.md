# Go backend coding standards (Gin/Echo)

- Structure: handlers thin; services/usecases for business logic; repositories for data access; domain models isolated from transport.
- Context: pass `context.Context` through handlers/services/repos; include request IDs in logs.
- Validation: validate inputs (binding + custom validation); reject early; sanitize output shapes.
- Errors: use typed/sentinel errors; map to consistent HTTP error responses; avoid panics.
- Logging: structured logs with level and correlation ID; never log secrets; include latency where useful.
- Concurrency: avoid shared mutable state; use contexts for cancellation; set timeouts on HTTP/DB calls.
- Testing: cover services with fakes/mocks; handler tests via httptest; use `go test ./...` and `golangci-lint run` before merge.
- Style: gofmt enforced; avoid long functions; keep interfaces small and purposeful.

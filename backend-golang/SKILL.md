---
name: backend-golang
description: Build, maintain, and debug Go backends (Gin and Echo).
metadata: {"openclaw":{"emoji":"#️","requires":{"bins":["go"]}}}
---

# Backend - Go (Gin/Echo)

## When to use this skill
- Building or updating Go HTTP APIs using Gin or Echo.
- Adding routes/handlers/middleware, validation, logging, or persistence.
- Improving performance, observability, security, or testing for Go services.

## Quick start
1. Install deps: `go mod tidy` (or `go mod download`).
2. Env: copy `.env.example` -> `.env` if present; load via `godotenv`/config; set DB URLs, secrets, and service endpoints.
3. Run: `go run ./...` or service-specific `make dev` if provided.
4. Test: `go test ./...`; lint/format: `golangci-lint run` and `gofmt -w`/`go fmt ./...`.
5. Build: `go build ./cmd/...` or project entry.

## Project structure basics
- `cmd/<service>/main.go`: entrypoint; wire router, middleware, config, logger, DI.
- `internal/` or `pkg/`: handlers, services/usecases, repositories, domain models, DTOs.
- `configs/`: config files; prefer typed config structs with validation.
- `migrations/`: SQL/DDL migrations if applicable.

## Coding principles
- Keep handlers thin: parse/validate input, call services/usecases, map errors to HTTP responses.
- Services hold business logic; repositories isolate data access; prefer interfaces for tests.
- Validate inputs; return typed errors and map to consistent JSON error shapes.
- Use context-aware logging with request IDs; never log secrets.
- Prefer `golangci-lint` and `go test ./...` before merge (see scripts/dev-check.sh).

## Patterns and snippets
- See references/snippets.md for Gin/Echo router setup, middleware, handlers, error mapping, and DI patterns.
- Centralize HTTP error responses; include correlation ID; avoid panics in request path.
- Use `context.Context` in all public methods; pass through layers.

## Bundled resources
- scripts/dev-check.sh: run pre-commit/PR to enforce gofmt, lint, tests, and optional build.
- references/coding-standards.md: guardrails on layering, validation, errors, logging, and testing.
- references/best-practices.md: deeper guidance for Gin/Echo routing, middleware, observability, performance, and security.
- references/snippets.md: ready-to-copy snippets for Gin and Echo (routing, middleware, handlers, errors).
- assets/pr-template.md: PR checklist with testing evidence and API notes.
- assets/migration-checklist.md: use when adding DB schema changes.

## Delivery checklist
- `gofmt`/`go fmt` clean; `golangci-lint run` passes; `go test ./...` green.
- Config validated; secrets not logged; env vars documented.
- HTTP errors normalized; correlation/request IDs propagated.
- Migrations applied/documented if DB changes; API contracts/docs updated if endpoints change.

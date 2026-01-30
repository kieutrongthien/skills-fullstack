# Laravel coding standards

- Keep controllers thin; push logic to services/actions; validate with Form Requests.
- Define fillable/guarded; eager-load to avoid N+1; use scopes/value objects for domain clarity.
- Route/API contracts via resources/transformers; keep responses consistent.
- Normalize errors in exception handler; avoid leaking internal messages; include request IDs in logs.
- Security: policies/gates for authz; hash secrets; avoid logging sensitive data.
- Enforce tests (phpunit/pest) and available lint/static tools before merge via `scripts/dev-check.sh`.

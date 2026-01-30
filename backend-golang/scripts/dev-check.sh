#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

if command -v gofmt >/dev/null 2>&1; then
  echo "▶ gofmt"
  gofmt -w $(find "$ROOT" -name '*.go' -not -path '*/vendor/*')
fi

echo "▶ go test ./..."
(cd "$ROOT" && go test ./...)

if command -v golangci-lint >/dev/null 2>&1; then
  echo "▶ golangci-lint run"
  (cd "$ROOT" && golangci-lint run)
else
  echo "... skip golangci-lint (not installed)"
fi

echo "▶ go build ./..."
(cd "$ROOT" && go build ./...)

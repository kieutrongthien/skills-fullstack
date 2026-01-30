#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

detect_pm() {
  if [ -f "$ROOT/pnpm-lock.yaml" ] && command -v pnpm >/dev/null 2>&1; then
    echo pnpm
    return
  fi
  if [ -f "$ROOT/yarn.lock" ] && command -v yarn >/dev/null 2>&1; then
    echo yarn
    return
  fi
  echo npm
}

PM="${PM:-$(detect_pm)}"
echo "Using package manager: $PM"

ensure_install() {
  if [ ! -d "$ROOT/node_modules" ]; then
    echo "Installing dependencies..."
    (cd "$ROOT" && $PM install)
  fi
}

has_script() {
  node -e "const s=require('$ROOT/package.json').scripts||{}; process.exit(s['$1']?0:1)" >/dev/null 2>&1
}

run_if() {
  local script=$1
  if has_script "$script"; then
    echo "▶ $script"
    (cd "$ROOT" && $PM run "$script")
  else
    echo "... skip $script (script not defined)"
  fi
}

ensure_install
run_if lint
run_if format
run_if test
run_if test:e2e
run_if type-check
run_if build

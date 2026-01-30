#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ! -d "$ROOT/vendor" ]; then
  echo "Installing Composer dependencies..."
  (cd "$ROOT" && composer install --no-interaction --prefer-dist)
fi

has_composer_script() {
  php -r "echo isset(json_decode(file_get_contents('$ROOT/composer.json'), true)['scripts']['$1']) ? 'yes' : 'no';" 2>/dev/null
}

run_composer_script() {
  local script=$1
  if [ "$(has_composer_script "$script")" = "yes" ]; then
    echo "▶ composer run $script"
    (cd "$ROOT" && composer run "$script")
  else
    echo "... skip $script (composer script not defined)"
  fi
}

if [ "$(has_composer_script test)" = "yes" ]; then
  run_composer_script test
elif [ -f "$ROOT/artisan" ]; then
  echo "▶ php artisan test"
  (cd "$ROOT" && php artisan test)
else
  echo "... skip tests (no composer script and artisan not found)"
fi

run_composer_script lint
run_composer_script pint
run_composer_script phpstan

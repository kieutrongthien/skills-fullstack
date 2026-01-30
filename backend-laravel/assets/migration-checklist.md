# Migration checklist (Laravel)

- New migrations added with reversible up/down steps.
- Seeders updated only if necessary; lightweight for tests.
- Ran `php artisan migrate` locally; consider `--seed` if needed.
- Communicated env/config changes; queue/cache implications considered.
- Rollback path understood; backups for prod if risky.

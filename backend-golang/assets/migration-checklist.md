# Migration checklist (Go services)

- New migrations added, named clearly, and reversible if possible.
- Applied locally; plan for lower envs; rollback path understood.
- App code updated for new schema; feature toggles if needed.
- Tests/integration cover new schema paths; fixtures adjusted.
- Config/env changes documented; backups/ops plan noted for prod.

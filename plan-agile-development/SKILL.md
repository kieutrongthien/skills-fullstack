---
name: plan-agile-development
description: Guide coding execution, track story progress, and keep work flowing.
---

# Agile Development Execution Skill

## What it does
- Guides dev tasks from acceptance criteria to code, tests, PRs, and status updates.
- Ensures branch/PR hygiene and continuous integration checks stay green.

## When to use
- When breaking a story into tasks and coding steps.
- While monitoring day-to-day execution, task movement, and CI health.

## Key operations
- Identify active project; read `PROJECT.md`, `current-sprint.json`, `tasks/todo.json`.
- Task breakdown: story → tasks/subtasks; assign owners; set branch/PR naming.
- Status transitions: move tasks between todo → in-progress → in-review/testing → done; log time/blockers.
- CI hygiene: run lint/test/build locally; keep pipelines green; record notable CI runs.
- Progress tracking: update task-plan and dev-notes; re-plan if blocked; log to `memory/YYYY-MM-DD.md`.

## Output files
- `projects/<ACTIVE>/tasks/todo.json` — tasks not started.
- `projects/<ACTIVE>/tasks/in-progress.json` — active tasks.
- `projects/<ACTIVE>/tasks/done.json` — completed tasks.
- `projects/<ACTIVE>/tasks/task-log.md` — daily progress/time/blockers.
- `execution/task-plan.md` — per-story task breakdown (if used locally).
- `execution/dev-notes.md` — decisions, trade-offs, blockers, follow-ups.
- `execution/ci-status.md` — notable CI runs, failures, fixes, flaky tests.
- `memory/YYYY-MM-DD.md` — session decisions, blockers, time spent.

## Example workflow
1) Pull story details; restate acceptance criteria; break into tasks; assign owners.
2) Move task to `in-progress.json`; create branch; code with small commits; run lint/test/build before PR.
3) Update `task-plan.md`/`dev-notes.md`; track CI runs in `ci-status.md`; log blockers in `task-log.md` and `memory/YYYY-MM-DD.md`.
4) Move task to `in-review.json`/`testing.json` then `done.json`; ensure statuses and logs updated.

## Best practices (best practice)
- Keep PRs small and focused; link to story ID.
- Automate checks locally (pre-commit/dev-check scripts) before pushing.
- Communicate blockers within same day; avoid silent stuck work.
- Keep tasks visible; update statuses daily across `todo.json`/`in-progress.json`/`done.json`.
- Log hours/time spent for velocity and capacity accuracy.

## Related resources (tài liệu liên quan)
- `AGENTS.md` (task state flow, file update rules)
- `SKILLS.md`, `MEMORY.md`, `memory/YYYY-MM-DD.md`
- `projects/<ACTIVE>/tasks/*.json`, `task-log.md`, `current-sprint.json`
- `team/branch-naming.md`; `scripts/dev-check.sh`; Definition of Done
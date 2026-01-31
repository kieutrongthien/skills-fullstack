---
name: plan-task-completion-verification
description: Verify acceptance criteria, quality, and readiness before closure.
---

# Task Completion Verification Skill

## What it does
- Confirms acceptance criteria are met with evidence.
- Checks quality gates (tests, QA, accessibility/performance where relevant).
- Ensures documentation and stakeholders are updated before closure.

## When to use
- Before demo/release to ensure readiness.
- When handing off to QA/UAT or stakeholders.

## Key operations
- Identify active project and task; review acceptance criteria and task state (`tasks/*.json`).
- Verify implementation against criteria; capture evidence (screenshots, logs, links).
- Validate tests (unit/integration/e2e) and linters; check performance/a11y/security as applicable.
- Update docs/changelog/release notes; confirm stakeholder sign-off or UAT.
- Move task state to testing/done per `AGENTS.md`, log results and time, update `memory/YYYY-MM-DD.md`.

## Output files
- `projects/<ACTIVE>/tasks/in-progress.json` → `tasks/done.json` (state transition when complete).
- `projects/<ACTIVE>/tasks/task-log.md` — evidence, test results, time spent, blockers resolved.
- `projects/<ACTIVE>/verification/checklist.md` — criteria, evidence, test results, sign-offs (if repo uses verification/).
- `projects/<ACTIVE>/verification/test-results.md` — summary of automated/manual test outcomes.
- `projects/<ACTIVE>/verification/release-notes.md` — user-facing changes and impacts (if shipping).
- `memory/YYYY-MM-DD.md` — decisions, sign-offs, risks.

## Example workflow
1) Identify active project and task.
2) Re-read acceptance criteria; walk through implementation against each with evidence.
3) Run automated tests; execute targeted manual checks (a11y/perf/security if needed); record in `test-results.md`/`task-log.md`.
4) Update `checklist.md` and `release-notes.md`; obtain sign-off (QA/PO); move task to `done.json`; log in `memory/YYYY-MM-DD.md`.

## Best practices
- Evidence-first: link PRs, screenshots, logs for each criterion.
- Do not skip tests; rerun after late changes; note flaky cases.
- Include a11y/perf spot checks for UI; include security considerations for APIs.
- Keep checklists short, consistent, and repeatable.
- Update task state immediately after verification; keep audit trail in `task-log.md` and `memory/YYYY-MM-DD.md`.
- Avoid deleting/overwriting artifacts; follow `AGENTS.md` safety (no destructive operations).

## Related resources
- `AGENTS.md` (task flow, safety rules)
- `SKILLS.md`, `MEMORY.md`, `memory/YYYY-MM-DD.md`
- `projects/<ACTIVE>/tasks/*.json`, `task-log.md`
- Definition of Done; testing/coverage reports; a11y/perf playbooks (team docs)

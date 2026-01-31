---
name: plan-sprint-management
description: Plan, run, and close sprints with healthy velocity and burndown.
---

# Sprint Management Skill

## What it does
- Plans sprint scope, capacity, and goals.
- Monitors execution via burndown, burnup, and velocity trends.
- Facilitates mid-sprint adjustments and end-of-sprint review/retro.

## When to use
- When setting or recalibrating team capacity and commitments.
- When burndown deviates or blockers threaten the goal.

## Key operations
- Identify active project; read `PROJECT.md`, backlog, `current-sprint.json`, `sprint-history.md`.
- Capacity planning: team availability, carry-over analysis, velocity guidance.
- Scope selection: pull stories by priority and capacity; set sprint goal.
- Tracking: daily burndown/burnup, WIP limits, blocker log; update `current-sprint.json`.
- Closeout: demo checklist, retro inputs, carry-over handling; update `sprint-history.md` and reports.
- Log decisions and changes in `memory/YYYY-MM-DD.md`.

## Output files
- `projects/<ACTIVE>/sprints/current-sprint.json` — active sprint scope, goal, capacity, burndown.
- `projects/<ACTIVE>/sprints/sprint-[N].json` — snapshots per sprint.
- `projects/<ACTIVE>/sprints/sprint-history.md` — retrospectives, velocity notes.
- `projects/<ACTIVE>/reports/burndown-chart.json` — burndown/burnup data (if generated).
- `projects/<ACTIVE>/reports/velocity-chart.json` — velocity trends.
- `projects/<ACTIVE>/sprints/plan.md` (optional) — capacity, goals, committed stories, dependencies.
- `projects/<ACTIVE>/sprints/blockers.md` — blockers, owners, ETAs, mitigation.
- `memory/YYYY-MM-DD.md` — sprint decisions, risks, adjustments.

## Example workflow
1) Capture capacity and carry-over; set sprint goal; update `current-sprint.json`.
2) Select stories by priority; confirm acceptance criteria and estimates; commit scope.
3) Track daily burndown; log blockers; adjust scope/WIP if needed; update `burndown-chart.json`.
4) Close sprint: demo/review, retro notes, velocity update, carry-over to next sprint; update `sprint-[N].json`, `sprint-history.md`, reports.

## Best practices
- Keep WIP limited; favor finishing over starting new.
- Maintain a clean blocker log with owners and due dates.
- Re-estimate only when scope changes materially.
- Use velocity as a guide, not a target; avoid over-commitment.
- Maintain buffer (10–20%) and keep planned points ≤ velocity × 1.1.
- Record deviations and decisions in memory and sprint-history for transparency.

## Related resources
- `AGENTS.md` (sprint workflow, reporting expectations)
- `SKILLS.md`, `MEMORY.md`, `memory/YYYY-MM-DD.md`
- `projects/<ACTIVE>/sprints/current-sprint.json`, `sprint-[N].json`, `sprint-history.md`
- `projects/<ACTIVE>/reports/burndown-chart.json`, `velocity-chart.json`
- `sprint/retro` or `sprint-template` docs if present
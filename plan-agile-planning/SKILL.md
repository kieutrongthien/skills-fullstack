---
name: plan-agile-planning
description: Create epics, user stories, and estimate points for predictable delivery.
---

# Agile Planning Skill

## What it does
- Translates new requirements into epics and user stories mapped to the active project.
- Defines acceptance criteria and estimation (story points/t-shirt sizes) consistent with team velocity.
- Produces a prioritized backlog aligned to outcomes and logs decisions in memory.

## When to use
- Before starting a new initiative or feature set.
- When backlog is unclear or lacks acceptance criteria or estimates.
- When stakeholders need scope clarity and effort signals.

## Key operations
- Identify active project (`projects/current-project.txt` or `PROJECT.md` status) and review `PROJECT.md`, `backlog/epics.json`, `backlog/user-stories.json`, `current-sprint.json`.
- Identify outcomes and slice into epics and stories with INVEST acceptance criteria.
- Estimate effort (points) and dependencies; flag risks/assumptions; check against historical velocity in `sprint-history.md`.
- Prioritize using value vs. effort and constraints; propose sprint placement respecting capacity guidance from `AGENTS.md`.
- Log rationale and decisions in `memory/YYYY-MM-DD.md`.

## Output files
- `projects/<ACTIVE>/backlog/epics.json` — epics with goals, scope, risks, dependencies.
- `projects/<ACTIVE>/backlog/user-stories.json` — prioritized user stories with acceptance criteria and estimates.
- `projects/<ACTIVE>/backlog/backlog-index.md` — human-readable summary.
- `projects/<ACTIVE>/backlog/assumptions-risks.md` — assumptions, constraints, risks, mitigations.
- `projects/<ACTIVE>/backlog/estimation-log.md` — estimation rationale and calibration notes.
- `memory/YYYY-MM-DD.md` — decisions, rationale, sprint placement notes.

## Example workflow
1) Run session init (AGENTS.md checklist); confirm active project.
2) Capture product goal and constraints; scan backlog for overlaps.
3) Draft epics and slice into stories with acceptance criteria.
4) Estimate each story (points); note dependencies and risks; check velocity.
5) Prioritize, propose sprint placement, update backlog files; log decisions in `memory/YYYY-MM-DD.md`.

## Best practices
- Make stories INVEST and testable; acceptance criteria are observable.
- Calibrate points with recent completed stories; avoid single-person estimates.
- Keep epics outcome-oriented; avoid solution-locking too early.
- Note risks and unknowns explicitly; create spikes for research.
- Respect capacity guidance: planned points ≤ velocity × 1.1 and reserve 10–20% buffer.

## Related resources
- `AGENTS.md` (session flow, safety rules)
- `SKILLS.md`, `MEMORY.md`, `memory/YYYY-MM-DD.md`
- `projects/<ACTIVE>/PROJECT.md`, `backlog/epics.json`, `backlog/user-stories.json`, `backlog/backlog-index.md`
- Definition of Ready/Done; team estimation guide (Planning Poker)

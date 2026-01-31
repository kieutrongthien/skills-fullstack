---
name: plan-progress-reporting
description: Create concise progress reports, metrics, and stakeholder communications.
---

# Progress Reporting Skill

## What it does
- Crafts status updates with outcomes, risks, and next steps.
- Summarizes metrics (velocity, burndown, defect rate) for stakeholders.
- Tailors message per audience (executive, product, engineering).

## When to use (khi nào dùng)
- When stakeholders request status or risk assessment.
- Before major milestones/releases to align expectations.

## Key operations
- Identify active project; gather metrics from `current-sprint.json`, velocity/burndown charts, task logs.
- Compile key metrics and narrative: what changed, impact, risks; include RAG with rationale and asks.
- Tailor content length and depth to audience; highlight decisions needed.
- Attach evidence (demo links, PRs, dashboards, burndown/velocity charts); log updates in `memory/YYYY-MM-DD.md`.

## Output files
- `projects/<ACTIVE>/reports/status.md` — current status, accomplishments, next steps, risks/asks.
- `projects/<ACTIVE>/reports/metrics.csv` — velocity, burndown snapshots, defects, lead time (if available).
- `projects/<ACTIVE>/reports/risks.md` — risk register with owners and due dates.
- `projects/<ACTIVE>/reports/weekly-report.md` or `sprint-review.md` when applicable.
- `memory/YYYY-MM-DD.md` — log shared updates, risks, and decisions.

## Example workflow
1) Gather metrics (velocity, burndown, completion %) and qualitative updates from `task-log` and sprint files.
2) Write `status.md` with RAG, highlights, risks, asks, and links to evidence (demo, PRs, dashboards).
3) Update `metrics.csv` and `risks.md`; share with stakeholders; log summary in `memory/YYYY-MM-DD.md`.

## Best practices (best practice)
- Lead with outcomes and impact; keep metrics brief and relevant.
- Be explicit about risks, mitigations, and help needed.
- Keep updates consistent cadence and format; avoid surprise escalations.
- Use visuals (burndown chart) when possible.
- Keep audience-specific brevity; executives want outcomes/risks/asks; engineering wants detail/links.
- Ensure data sources match AGENTS files (current-sprint.json, velocity/burndown charts) to avoid drift.

## Related resources (tài liệu liên quan)
- `AGENTS.md` (reporting guidance and cadence)
- `SKILLS.md`, `MEMORY.md`, `memory/YYYY-MM-DD.md`
- `projects/<ACTIVE>/sprints/current-sprint.json`, `reports/velocity-chart.json`, `reports/burndown-chart.json`
- `projects/<ACTIVE>/tasks/task-log.md`
- `company/status-template.md` (if present)
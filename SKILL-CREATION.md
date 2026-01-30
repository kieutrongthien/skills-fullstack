# SKILL authoring guide

Goal: keep each SKILL.md concise (<500 lines), consistent, and maintainable. Move detailed code samples and long-form guidance into sibling reference files.

## Structure for each skill folder
- SKILL.md: frontmatter (name, description) + concise instructions (when to use, quick start, structure, coding principles, references list, delivery checklist).
- scripts/: automation (e.g., dev-check.sh to run lint/test/build or project-specific checks).
- references/: deeper guidance split by topic (coding-standards.md, best-practices.md, snippets.md, etc.).
- assets/: review aids (pr-template.md, migration-checklist.md, diagrams, etc.).

## Required sections in SKILL.md
1) Frontmatter: name, description.
2) When to use: triggers/contexts.
3) Quick start: install/env/run/test commands (project-standard package manager or tooling).
4) Project structure basics: key entry points and folders.
5) Coding principles: 3-6 high-level rules (small components/services, typing, validation, error/loading states, a11y/security, pre-merge checks).
6) Patterns and snippets: point to references/snippets.md instead of embedding long blocks.
7) Bundled resources: bullet list of scripts, references, assets with when/why to use.
8) Delivery checklist: what must be green before merge (lint/tests/types/build, migrations applied, docs/env updates, a11y/perf as relevant).

## Content guidelines
- Keep SKILL.md under 500 lines; link out to references for detail.
- Prefer bullets over prose; keep commands explicit.
- Default to TypeScript/typed PHP/strict mode where applicable; avoid `any`/untyped inputs.
- Include pre-merge enforcement via scripts/dev-check.sh (or equivalent stack toolchain).
- Always mention env setup and secrets handling in quick start where relevant.
- Note lint/test/build commands appropriate to the stack (npm/pnpm/yarn, composer/artisan, etc.).

## Reference files (suggested)
- references/coding-standards.md: concise guardrails (boundaries, typing, error handling, security/a11y, required checks).
- references/best-practices.md: deeper architectural guidance (routing, state/data, API clients, caching, logging, testing strategy).
- references/snippets.md: ready-to-copy code templates.
- assets/pr-template.md: consistent PR checklist.
- assets/migration-checklist.md (backend): safe schema changes.

## Workflow to add a new skill
1) Create folder: e.g., `frontend-xyz/` or `backend-abc/`.
2) Draft SKILL.md with required sections; keep it lean; link to references.
3) Add scripts/dev-check.sh to standardize lint/test/build (adapt to stack scripts).
4) Add references/coding-standards.md, best-practices.md, snippets.md tailored to the stack.
5) Add assets/pr-template.md; for backends, add migration-checklist if migrations apply.
6) Verify commands in dev-check.sh match actual package/composer scripts; update quick start accordingly.
7) Review for brevity, clarity, and consistency; ensure frontmatter name/description are accurate.

## Consistency checklist (apply to every skill)
- SKILL.md <500 lines and references out to supporting files.
- Quick start commands correct for the stack/package manager.
- Bundled resources list present and accurate.
- Delivery checklist covers lint/tests/types/build and stack-specific items (migrations, API docs, a11y/perf).
- Scripts are executable on the target platform (bash notes for Windows users: Git Bash/WSL).
- Naming is consistent: folder name matches frontmatter `name`.

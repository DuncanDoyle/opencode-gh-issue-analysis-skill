# Design: OpenCode GitHub issue analysis

Create an OpenCode-only investigation skill from the agreed seven-phase workflow.
The source folder retains `opencode-gh-issue-analysis-skill`; the runtime name is
`opencode-gh-issue-analysis`. Follow neighboring repositories: root SKILL.md,
README.md, and a reusable handover template. No product implementation is involved.

## Decisions
- Install runtime files through scripts/install-skill.sh into OpenCode's global
  skills directory under the runtime name. Allow OPENCODE_SKILLS_DIR overrides.
  Refuse destination symlinks and the source checkout itself. Do not install into
  the shared discovery directory by default. This replaces the original symlink
  approach at the user's request.
- Put an OpenCode-only restriction in discovery metadata and the skill body.
  This is an instruction guardrail, not portable enforcement if installed elsewhere.
- Keep all seven phases in a compact SKILL.md; use templates/HANDOVER.md for state.
- Use the supplied Qwen models as configurable role preferences, not capability claims.
  Model selection belongs to OpenCode configuration or the user, not skill frontmatter.
- Default scope is analysis and validated reproduction, phases 1–3. Investigation
  and fixes require scope authorization; existing explicit authorization persists.
- Run one phase at a time. Persist evidence and the next action before model handoff.
- Preserve repository instructions, design/plan gates, unrelated changes, and
  existing domain-specific workflows. No mandatory dependencies on other skills.
- No automatic GitHub posting, model installation, agent configuration changes,
  product fixes, or infrastructure changes outside the requested reproduction.

## Acceptance
The skill distinguishes execution evidence from hypotheses, unsuccessful runs
from confirmed reproductions, and reproduction status from reviewer confidence.
It supports resuming, unavailable models, review rejection, and the explicitly
authorized fix path without silently bypassing review gates.

Downstream product changes must assess data-plane costs; this package generates no config.

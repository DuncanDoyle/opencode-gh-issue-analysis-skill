# OpenCode GitHub issue analysis skill

A phased workflow for issue analysis, minimal reproduction, evidence review,
and optional root-cause investigation and fixes. The preferred models are
`qwen3.8:27b-mxfp8` for analysis/review and `qwen3-coder-next:latest` for execution.
These preferences are configurable, not benchmark claims.

## Layout

The repository root is the skill, matching neighboring skill source repositories.

| Path | Purpose |
|---|---|
| `SKILL.md` | Host restriction, phase routing, evidence gates, model handoffs |
| `templates/HANDOVER.md` | Reusable investigation state and evidence template |
| `scripts/install-skill.sh` | Installs runtime files into OpenCode's skills directory |
| `design.md` | Agreed package design and scope |
| `implementation-plan.md` | Implementation steps and validation record |

## Install for OpenCode only

From this source directory:

```bash
scripts/install-skill.sh  # -> ~/.config/opencode/skills/opencode-gh-issue-analysis
OPENCODE_SKILLS_DIR=/somewhere scripts/install-skill.sh
```

The installer requires Bash and rsync, like the neighboring skill installers.
It copies only SKILL.md and templates/, leaving source docs and Git metadata out.
Rerun after source updates; stale files within the installed templates/ are removed.
Reload OpenCode discovery as needed. If previously installed by symlink, inspect
and remove that installation symlink first; the installer refuses symlink targets
and installation into the source checkout itself.

Do not install into `~/.agents/skills` for discovery isolation. Shared installation
would expose the skill to other tools; the OpenCode-only description and body
are instructions, not an enforced access restriction.

## Usage

In OpenCode, ask:

> Use opencode-gh-issue-analysis to analyze and reproduce https://github.com/OWNER/REPO/issues/123.

The default scope ends after reproduction validation. To resume, provide the
investigation's HANDOVER.md path and ask to continue. Request root-cause
investigation or a fix explicitly when needed; prior explicit authorization persists.

The workflow completes one phase and writes the handover before requesting the
next model. Select models manually or configure two OpenCode agents with your
actual provider/model IDs. The skill does not configure agents or switch models
by itself. It never claims that a model switch or independent review occurred
without evidence. GitHub posting is outside scope unless explicitly requested.

Documentation:
- [OpenCode skills and discovery](https://docs.opencode.ai/docs/skills/)
- [OpenCode agents and model configuration](https://opencode.ai/docs/agents/)
- [Agent Skills format](https://agentskills.io/specification)

## Validate

```bash
python3 "$HOME/.codex/skills/.system/skill-creator/scripts/quick_validate.py" .
```

Real phase execution still needs validation in OpenCode with your models.

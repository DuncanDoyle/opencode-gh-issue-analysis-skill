#!/usr/bin/env bash
# Copy runtime files to OpenCode's skills directory, following sibling installers.
# OPENCODE_SKILLS_DIR overrides the parent directory, not the skill name.
set -euo pipefail

skill_source=$(cd "$(dirname "$0")/.." && pwd -P)
skill_dest="${OPENCODE_SKILLS_DIR:-$HOME/.config/opencode/skills}/opencode-gh-issue-analysis"

# A previous symlink installation could write back into the source checkout.
if [[ -L "$skill_dest" || -L "$skill_dest/templates" ]]; then
  echo "Refusing a symlink destination: $skill_dest (or its templates directory). Remove the old installation symlink first." >&2
  exit 1
fi

mkdir -p "$skill_dest"
if [[ "$(cd "$skill_dest" && pwd -P)" == "$skill_source" ]]; then
  echo "Refusing to install into the source checkout: $skill_dest" >&2
  exit 1
fi

# Only runtime files are copied. --delete removes stale files within templates/.
rsync -a --delete \
  "$skill_source/SKILL.md" \
  "$skill_source/templates" \
  "$skill_dest/"

echo "Installed opencode-gh-issue-analysis to $skill_dest"

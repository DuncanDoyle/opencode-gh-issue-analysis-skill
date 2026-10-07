# Implementation plan

The user approved the workflow and OpenCode-specific installation approach in
conversation and requested creation in this source directory.

1. Establish the design in design.md before writing runtime instructions.
2. Write SKILL.md with host restriction, scope routing, model handoffs, seven
   phase procedures, evidence requirements, and completion gates.
3. Add templates/HANDOVER.md with the agreed 18 sections and explicit state.
4. Add README.md matching neighboring skill repositories, documenting runtime
   naming, safe symlink installation, usage, and manual model selection.
5. Validate frontmatter, template links, installed folder naming, and package
   discovery via a temporary symlink. Review realistic entry and resume cases.

Keep the change within five files and 400 lines. Do not install into the user's
home directory, configure OpenCode, initialize Git, or publish anything.

## Validation record
- Skill-creator format validator: PASS.
- Temporary symlink: runtime folder/name agreement, frontmatter, template link,
  and all 18 handover sections verified; no home-directory installation made.
- Manual routing review: default stop at phase 3, explicit investigation/fix scope,
  resume invalidation, unavailable model, inconclusive run, and rejected review.
- OpenCode/Qwen execution not run; behavior with the local models remains unverified.

## Installer update

At the user's request, replace symlink installation with a script matching the
neighboring skills. Copy SKILL.md and templates/ only, default to OpenCode's global
skills directory, and allow OPENCODE_SKILLS_DIR overrides. Refuse symlink targets
and installation into the source checkout. Update README.md and verify initial
installation, updates, and refusal cases in temporary directories before delivery.
The earlier creation-only restrictions above describe the initial task; subsequent
user requests authorize GitHub publication and OpenCode installation.

Installer validation: Bash syntax, clean install, exact runtime contents, update,
stale template removal, destination/template symlink refusal, and source=self
refusal all passed in temporary directories. Skill format and diff checks passed.
Installation into the default home-directory destination was blocked by the sandbox.

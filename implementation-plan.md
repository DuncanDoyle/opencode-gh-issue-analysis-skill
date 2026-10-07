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

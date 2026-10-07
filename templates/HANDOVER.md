# Issue Handover

## Working rules

- Read this document completely before starting; update it before handing off.
- Separate observations from hypotheses; preserve exact commands and evidence.
- Claim reproduction only after execution and root cause only with causal evidence.
- Validate reproduction and root cause before implementing an authorized fix.
- Preserve repository instructions and avoid unrelated refactoring.
- Keep exactly one next action current. Use UNKNOWN or NOT RUN for missing evidence.

## Workflow state

- Authorized scope: ANALYZE + REPRODUCE (default); INVESTIGATE / FIX if requested
- Current phase and status:
- Actual model/provider (UNKNOWN if unavailable):
- Artifact directory:
- Evidence last checked at revision/date:

## 1. Issue

URL, number, title, owner/repository, branch and exact commit under investigation:
Issue/comments read at; unavailable material:

## 2. Problem statement

Reported behavior; expected behavior and its source; impact:
Known affected versions; known working versions (with evidence):

## 3. Environment

Only relevant details: product, chart, Kubernetes, Gateway API, actual Envoy,
OS/platform, installation method, flags, dependencies, and resolved image digests.
Record how each version was obtained; do not infer dependency versions from tags.

## 4. Original reproduction information

Reporter steps, configuration references, output, missing or ambiguous details:

## 5. Analysis

Observed facts and sources:
Assumptions and how to test them:

## 6. Relevant code areas

Files/packages/functions/types and why they matter:

## 7. Hypotheses

For each: explanation, supporting evidence, contrary evidence, confidence,
and a discriminating experiment. Keep rejected hypotheses with their reasons.

## 8. Reproducer requirements

Minimal environment and input:
Expected behavior versus buggy behavior:
Precise observable success criterion:
Controls and potential confounders:

## 9. Reproducer

Location, files, repository revision, configuration, and evidence artifact links:
Exact setup commands:
Exact run commands:
Exact cleanup commands and resources owned by this reproduction:

## 10. Reproduction results

Status: INCONCLUSIVE (choose CONFIRMED / PARTIAL / NOT REPRODUCED / INCONCLUSIVE)
Executed commands, exit codes, actual output, logs, and observed behavior:
Successful reproductions / attempts; nondeterminism; blockers:

## 11. Validation

Issue match: UNKNOWN (Yes / No / Partially)
Verdict: INCONCLUSIVE (CONFIRMED / LIKELY / INCONCLUSIVE / NOT REPRODUCED)
Reviewer/model; confidence (Low / Medium / High); evidence and reasoning:
Confounders; rejected assumptions; review date/revision:

## 12. Root cause

Status: UNKNOWN (UNKNOWN / SUSPECTED / CONFIRMED)
Classification and concise explanation:
Code path, relevant files/functions, causal evidence, symptoms explained:
Schemas/configuration options and OSS/enterprise layers checked:
Alternative explanations; review acceptance/rejection and reasons:

## 13. Fix requirements

A correct fix must / must not; compatibility guarantees; negative cases:
Regression risks; design/plan references and required updates:
Generated configuration and runtime costs, when applicable:

## 14. Implementation

Status: NOT STARTED (NOT STARTED / IN PROGRESS / COMPLETE)
Authorization reference; files changed; summary; decisions and alternatives:
Temporary diagnostics and cleanup:

## 15. Tests

Regression boundary and harnesses checked:
Tests added; expected failure before fix and pass after fix (commands/results):
Existing tests/build checks run (commands/results):
Reproducer after fix: NOT RUN (PASS / FAIL / NOT RUN), revision and evidence:
Compatibility/negative coverage; limitations and remaining failures:
Final review findings, disposition, and maintainer/PR draft links or text:

## 16. Open questions

Unresolved questions, blockers, and evidence needed:

## 17. Next action

Exactly one executable next action, assigned phase/model, and prerequisite if blocked.

## 18. Handover history

Date | Phase | Actual model | Outcome / evidence revision | Next phase

Review all local changes (staged and unstaged) before committing.

Run these commands to gather context:
- `git status`
- `git diff`
- `git diff --cached`

Then review every changed file and report on:

**Correctness**
- Does the logic do what it intends?
- Are there edge cases not handled?
- Any off-by-one errors, nil dereferences, or type mismatches?

**Consistency**
- Do the changes follow patterns from CLAUDE.md?
- Naming conventions, error handling style, response types?

**Completeness**
- Is anything half-implemented or stubbed out?
- Are there TODOs left in the code?
- Does `TODO.md` need updating to reflect what was done?

**Security**
- Any secrets, hardcoded values, or unsafe inputs?
- SQL injection, XSS, or auth bypasses?

**Tests & quality**
- Run `mise run check` and report the output.
- Are the changes testable? Are tests missing?

End with a clear verdict:
- **Ready to commit** — and suggest a concise conventional commit message
- **Needs work** — list specific issues to fix first, ordered by severity

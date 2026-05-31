# Workflow Conventions

## Git

- **Conventional commits**: All commit messages must use the `type: description` format (feat, fix, chore, refactor, docs, test, ci). Include a body explaining the "why" when the title alone is insufficient.
- **Never amend**: Always create a new commit unless the user explicitly says "amend". Amending silently rewrites history the user may have already referenced or pushed.
- **Never force-push**: Do not suggest or execute `git push --force` (or `--force-with-lease`) without explicit user approval. State what will be overwritten first.
- **Stage deliberately**: Add specific files by name. Do not use `git add .` or `git add -A` unless the user asks for it.

## Code Review

When reviewing code (PRs, diffs, branches):

- **Be concise and decisive**. One-line bullet points. No hedging, no philosophical commentary, no "consider whether...".
- **Do not flag established patterns**. If a pattern (CORS wildcards, region attributes, naming conventions) is already used consistently in the codebase, it is intentional. Do not flag it.
- **Focus on what matters**: Bugs, security issues, logic errors, and genuinely confusing code. Skip stylistic nitpicks that a linter should catch.
- **If everything is fine, say so in one line**. Do not invent concerns to fill space.
- **Match the requested format**: If the user wants PR comments, produce pasteable markdown bullets. If they want conversational feedback, keep it informal. Ask if unclear.

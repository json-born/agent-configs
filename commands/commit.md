---
description: Write a git commit message for staged changes and commit after human approval. Use when the user wants to commit their staged work.
---

Create a git commit for the currently staged changes.

## Steps

1. Run `git diff --staged` to read what is staged. If nothing is staged, stop and tell the user to stage their changes first.

2. Draft a commit message:
   - **Title**: one short imperative sentence (50 chars or fewer). No period at the end.
   - **Body**: 2-5 bullet points describing what changed and why. Each bullet should be a complete, imperative sentence. Focus on the substance of the change, not the mechanics (avoid "updated file X").

3. Show the message to the user and ask for approval before doing anything else.

4. Once approved, run `git commit -m` with the message. Do not add a co-author trailer.

## Commit Message Format

```
<imperative title>

- Bullet describing a meaningful change
- Bullet describing another change
- Include motivation or context where it adds clarity
```

## Rules

- Do not stage additional files. Only commit what is already staged.
- Do not run `git push` or any other follow-up commands.
- Do not add `Co-Authored-By` or any other trailers.
- If the user edits or rejects the message, revise and ask again before committing.

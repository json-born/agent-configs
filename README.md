# agent-configs

My personal Claude Code configuration pack, providing shared rules and commands to help Claude produce results better attuned to my requirements.

## What this repo provides

- `CLAUDE.md` - root entry point; imports core rules and pinned skills
- `rules/` - markdown rule files loaded via `@` imports in `CLAUDE.md`
- `skills-lock.json` - skills.sh lock file; tracks installed skills across machines

## Installation

```bash
git clone <repo-url> ~/code/agent-configs
~/code/agent-configs/scripts/setup
```

`setup` wires everything in one shot:
- Symlinks `~/.claude/CLAUDE.md` and `~/.claude/rules/` into the repo
- Installs skills into `repo/.agents/skills/` and symlinks `~/.agents` there
- Registers each skill as a slash command under `~/.claude/commands/`

---

## Managing skills

Skills are managed via [skills.sh](https://skills.sh). Run commands from the repo root so `skills-lock.json` is picked up automatically.

```bash
npx skills add <owner/repo>
npx skills remove <skill-name>
npx skills update
```

Commit `skills-lock.json` when you're happy with the new state. Re-run `scripts/setup` after pulling changes on a new machine.

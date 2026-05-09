# agent-configs

My personal Claude Code configuration pack, providing shared rules and commands to help Claude produce results better attuned to my requirements.

## What this repo provides

- `CLAUDE.md` — root entry point; imports core rules
- `rules/` — markdown rule files loaded via `@` imports in `CLAUDE.md`
- `commands/` — Claude Code slash commands (contents gitignored; install via [skills.sh](https://skills.sh))
- `skills-lock.json` — skills.sh lock file; tracks installed skills across machines

---

## Installation

### Option A: Clone to `~/.claude/` (recommended)

Claude Code automatically loads `~/.claude/CLAUDE.md` and discovers slash commands from `~/.claude/commands/`.

```bash
git clone <repo-url> ~/.claude
```

Then symlink the skills lock file so skills.sh can find it:

```bash
mkdir -p ~/.agents
ln -s ~/.claude/skills-lock.json ~/.agents/.skill-lock.json
```

### Option B: Clone anywhere, then symlink

If you prefer to keep all your repos in one place (e.g. `~/code/`):

```bash
git clone <repo-url> ~/code/agent-configs
~/code/agent-configs/scripts/setup
```

`setup` creates symlinks from `~/.claude/` into the repo and wires up the skills lock file.

---

## Installing skills

Skills are managed via [skills.sh](https://skills.sh). On a new machine, restore all skills from the lock file:

```bash
npx skills experimental_install
```

To add or remove skills:

```bash
npx skills add <owner/repo>
npx skills remove <skill-name>
```

Because `~/.agents/.skill-lock.json` is symlinked to `skills-lock.json` in this repo, changes are reflected here automatically. Commit when you're happy with the new state.

---

## Creating custom commands

Add a `.md` file to `commands/` with a `description:` frontmatter field. Because `commands/` is gitignored, custom commands live only on your machine — they are not committed.

```markdown
---
description: What this command does and when to use it.
---

# My Command

Instructions go here.
```

Invoke it in Claude Code as `/my-command`.

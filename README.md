# agent-configs

My personal Claude Code configuration pack, providing shared rules and commands to help Claude produce results better attuned to my requirements.

## What this repo provides

- `CLAUDE.md` — root entry point; imports core rules
- `rules/` — markdown rule files loaded via `@` imports in `CLAUDE.md`
- `commands/` — Claude Code slash commands (gitignored; install via skill scripts below)
- `scripts/anthropic-skill` — install commands from the [Anthropic skills repo](https://github.com/anthropics/skills)
- `scripts/matt-skill` — install commands from the [Matt Pocock skills repo](https://github.com/mattpocock/skills)

---

## Installation

### Option A: Clone to `~/.claude/` (recommended)

Claude Code automatically loads `~/.claude/CLAUDE.md` and discovers slash commands from `~/.claude/commands/`.

```bash
git clone <repo-url> ~/.claude
```

No further setup needed.

### Option B: Clone anywhere, then symlink

If you prefer to keep all your repos in one place (e.g. `~/code/`):

```bash
git clone <repo-url> ~/code/agent-configs
~/code/agent-configs/scripts/setup
source ~/.config/fish/config.fish
```

`setup.sh` creates symlinks from `~/.claude/` into the repo and adds shell aliases for the skill scripts.

---

## Installing skills

Slash commands are not committed to this repo — they are installed artifacts. Use the skill scripts to populate `commands/` after cloning.

Both scripts try the Claude Code plugin system first (`claude plugin marketplace add` + `claude plugin install`) and fall back to a direct GitHub download if the plugin system is unavailable.

```bash
# List available skills
claude-skill --registry=anthropic list
claude-skill --registry=mattpocock list   # grouped by category

# Install a skill into commands/
claude-skill --registry=anthropic add code-review
claude-skill --registry=mattpocock add tdd

# Remove a skill
claude-skill --registry=anthropic remove code-review
claude-skill --registry=mattpocock remove tdd
```

Or run the scripts directly without the alias:

```bash
./scripts/claude-skill --registry=anthropic list
./scripts/claude-skill --registry=mattpocock add tdd
```

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

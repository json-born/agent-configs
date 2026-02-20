# agent-configs

My personal Claude Code configuration pack, providing shared rules and commands to help Claude produce results better attuned to my requirements.

## What this repo provides

- `CLAUDE.md` — root entry point; imports core rules
- `rules/` — markdown rule files loaded via `@` imports in `CLAUDE.md`
- `commands/` — Claude Code slash commands (one `.md` file per command)
- `scripts/anthropic-skill` — installer for pulling commands from the [Anthropic skills repo](https://github.com/anthropics/skills)

---

## Installation

Add as a git submodule at `.claude/` in any project:

```bash
git submodule add <repo-url> .claude
```

Claude Code will automatically load `.claude/CLAUDE.md` and discover slash commands from `.claude/commands/`.

For project-specific instructions, add a `CLAUDE.md` at the project root — Claude Code reads both.

---

## Adding commands from the Anthropic skills repo

Use the bundled installer to pull commands from the [Anthropic skills repo](https://github.com/anthropics/skills).

**Set up an alias (recommended)**

```bash
./scripts/setup-alias.sh
source ~/.config/fish/config.fish
```

Then:

```bash
# List available skills
anthropic-skill list

# Install a command into this repo's commands/ directory
anthropic-skill add code-review

# Remove a command
anthropic-skill remove code-review
```

**Or use the script directly**

```bash
./scripts/anthropic-skill list
./scripts/anthropic-skill add code-review
./scripts/anthropic-skill remove code-review
```

---

## Creating custom commands locally

Add a `.md` file to `commands/` with a `description:` frontmatter field:

```
commands/
└── my-command.md
```

```markdown
---
description: What this command does and when to use it.
---

# My Command

Instructions go here.
```

Invoke it in Claude Code as `/my-command`.

---

## For Agents

You are reading a shared Claude Code configuration repository. Here is how to use it:

1. **Always apply** the content from `rules/core-identity.md` and `rules/core-conventions.md` — these define baseline behaviour and coding standards.
2. **Commands** in `commands/` are slash commands. Each `.md` file is one command; its filename is the invocation name (e.g. `frontend-design.md` → `/frontend-design`).
3. **Respect project-local overrides** — if the project has its own `.claude/CLAUDE.md` entries or `.claude/commands/` files that conflict with these shared rules, prefer those.

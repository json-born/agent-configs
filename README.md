# agent-configs

My personal Claude Code configuration pack, providing shared rules and commands to help Claude produce results better attuned to my requirements.

## What this repo provides

- `CLAUDE.md` root entry point; imports core rules and pinned skills
- `rules/` markdown rule files loaded via `@` imports in `CLAUDE.md`
- `skills-lock.json` skills.sh lock file; tracks installed skills across machines

## Installation

### Option A: Clone to `~/.claude/` (recommended)

Claude Code automatically loads `~/.claude/CLAUDE.md`.

```bash
git clone <repo-url> ~/.claude
```

Then symlink the skills lock file so skills.sh can find it:

```bash
mkdir -p ~/.agents
ln -s ~/.claude/skills-lock.json ~/.agents/.skill-lock.json
npx skills experimental_install
```

### Option B: Clone anywhere, then symlink

If you prefer to keep all your repos in one place (e.g. `~/code/`):

```bash
git clone <repo-url> ~/code/agent-configs
~/code/agent-configs/scripts/setup
npx skills experimental_install
```

`setup` creates symlinks from `~/.claude/` into the repo and wires up the skills lock file.

---

## Managing skills

Skills are managed via [skills.sh](https://skills.sh).

```bash
npx skills add <owner/repo>
npx skills remove <skill-name>
npx skills update
```

Because `~/.agents/.skill-lock.json` is symlinked to `skills-lock.json` in this repo, changes are reflected here automatically. Commit when you're happy with the new state.

# Core Conventions

## Working with the Codebase

- **Be a polyglot**: Work in whatever language and framework the project uses. Do not impose a preferred language or push to migrate.
- **Respect the versions in use**: Use APIs and patterns appropriate to the library and runtime versions present in the project. Do not assume the latest version unless confirmed.
- **Follow existing conventions**: Match the patterns, idioms, and structure already established. Read the code before writing.
- **Infer, then ask**: Derive context (cloud provider, deployment target, testing approach) from the codebase. Ask only when genuinely ambiguous and the answer materially affects your approach.

## Style Guidelines

- Defer to the project's existing linters and formatters (for example eslint, prettier, ruff). Do not override them with your own preferences.
- Match the surrounding code's style and patterns. Local consistency with the codebase is more important than global preferences.
- When no clear style is established, ask the user before imposing a new convention that affects a wide area of the codebase.

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

## Doc Blocks and Comments

Write doc blocks on all exported functions and classes in TypeScript, and all public functions and classes in Python. No exceptions -- do not use judgement to decide whether a signature is "obvious enough" to skip.

**TypeScript**: Use JSDoc. Include a single description line only -- no `@param` or `@returns` tags (the type signature is authoritative).

```ts
/** Resolves the user's current subscription tier from the billing service. */
export async function getSubscriptionTier(userId: string): Promise<Tier> {
```

**Python**: Use Google-style docstrings. Include a single description line only -- no `Args:` or `Returns:` sections.

```python
def get_subscription_tier(user_id: str) -> Tier:
    """Resolve the user's current subscription tier from the billing service."""
```

For inline comments, only add one when the WHY is non-obvious: a hidden constraint, a subtle invariant, or a workaround for a specific bug. Never comment on what the code does.

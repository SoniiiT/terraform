# OpenWolf

This project uses OpenWolf for context management. The always-on rules live in `.claude/rules/openwolf.md`; the hooks handle bookkeeping (anatomy index, memory log, read tracking) automatically.

For the full operating protocol (session handoff, memory discipline, bug logging), load the `openwolf` skill, or read `.wolf/OPENWOLF.md`. Regenerate the session handoff with `/handoff`.


# Claude project context

The canonical shared project context is in `.ai-context/`. Consult the project map and the relevant feature guide before making changes, and refresh it after substantial changes. Do not treat generated summaries as more authoritative than source code or explicit project rules.

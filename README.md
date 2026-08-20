# team-hub

TeamAI team repository: shared skills, rules, docs, env, hooks, MCP servers, and learnings distributed to AI coding tools through TeamAI CLI.

## Repository Layout

```text
team-hub/
├── teamai.yaml     # Team metadata and provider config
├── members/        # Registered team members
├── skills/         # Reusable AI skills (one directory per skill, with SKILL.md)
├── rules/          # Team coding rules (Markdown)
├── docs/           # Team documentation
├── env/            # Team environment variables (env.yaml)
├── hooks/          # Team hooks (hooks.yaml)
├── mcp/            # Team MCP servers (mcp.yaml)
├── claudemd/       # Shared instruction snippets injected into CLAUDE.md / AGENTS.md
├── agents/         # Shared subagent definitions
├── learnings/      # Session learnings shared by team members
└── votes/          # Recall feedback votes
```

## Getting Started

1. Install TeamAI CLI:

```bash
npm install -g teamai-cli
```

2. Update `teamai.yaml` with the real GitHub repository URL.

3. Push this repository to GitHub, then initialize a working project:

```bash
cd /path/to/my-project
teamai init https://github.com/<org>/team-hub
```

4. Add skills under `skills/<name>/SKILL.md` and share them with the team:

```bash
teamai push --skill skills/<name>
```

See https://github.com/Tencent/teamai-cli for the full TeamAI documentation.

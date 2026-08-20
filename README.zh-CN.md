# team-hub

TeamAI 团队仓库：通过 TeamAI CLI 向 AI 编码工具分发团队的 skills、rules、docs、env、hooks、MCP servers 和 learnings。

## 仓库结构

```text
team-hub/
├── teamai.yaml     # 团队元数据和 provider 配置
├── members/        # 已注册团队成员
├── skills/         # 可复用 AI 技能（每个技能一个目录，内含 SKILL.md）
├── rules/          # 团队编码规则（Markdown）
├── docs/           # 团队文档
├── env/            # 团队环境变量（env.yaml）
├── hooks/          # 团队 hooks（hooks.yaml）
├── mcp/            # 团队 MCP servers（mcp.yaml）
├── claudemd/       # 注入到 CLAUDE.md / AGENTS.md 的共享指令片段
├── agents/         # 共享子 agent 定义
├── learnings/      # 团队成员分享的 session 经验
└── votes/          # recall 反馈投票
```

## 快速开始

1. 安装 TeamAI CLI：

```bash
npm install -g teamai-cli
```

2. 把 `teamai.yaml` 中的 `repo` 改成真实的 GitHub 仓库地址。

3. 推送本仓库到 GitHub，然后在工作项目中初始化：

```bash
cd /path/to/my-project
teamai init https://github.com/<org>/team-hub
```

4. 在 `skills/<name>/SKILL.md` 添加技能，并分享给团队：

```bash
teamai push --skill skills/<name>
```

完整文档见 https://github.com/Tencent/teamai-cli 。

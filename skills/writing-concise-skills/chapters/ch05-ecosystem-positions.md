# Ch 5: 生态定位 —— 库派 vs 框架派

## Core Idea
Skill 生态的核心分歧就一条：控制权交给框架，还是留在工程师手里。

## Frameworks Introduced
- **库派（Library）vs 框架派（Framework）**：skill 设计的两种路线
  - 库派（mattpocock/skills 代表）：小、单用途、手动触发、鼓励改
  - 框架派（obra/superpowers 代表）：自动激活 + 硬性纪律，接管全流程；Mandatory workflows, not suggestions，哪怕只有 1% 可能适用也必须调用
- **信任溢价（Trust premium）**：当数据开始惩罚"大而全"，公开劝你少装的仓库反而拿到信任

## Key Concepts
- **spec 派**（github/spec-kit）：spec 是一等公民，规范驱动
- **指令集**（andrej-karpathy-skills）：一个 CLAUDE.md，几条轻约束
- **实证分歧**：arXiv 对照实验 —— 202 个 skill 使通过率平均降 21%；审计 3 万多个 skill，26.1% 至少含一处漏洞

## Mental Models
- 控制权光谱：框架派把判断前置（1% 可能就调用），库派把判断留给工程师
- 装得多，不仅更危险，而且更笨

## Anti-patterns
- **大而全**：被数据和审计双重惩罚（更笨 + 更危险）
- **无脑自动激活**：只要 1% 可能适用就必须调用 = 让模型选型负担爆炸

## Key Takeaways
1. 写 skill 前先选边：库派（手动触发、鼓励改）还是框架派（自动激活、接管流程）
2. 实证站在库派一边：少而精 > 大而全
3. 公开劝你少装的仓库，拿到的是信任溢价

## Connects To
- **Ch 4**: grill-me 是库派代表
- **Ch 6**: 冷水 —— 数据并未证明成熟度

---
name: writing-concise-skills
description: "写精炼 skill 的方法论：写责任别写步骤、薄驾驭厚上下文、补上下文守门槛、12 行样板、两周检验。Use when 用户要写新 skill、精简现有 skill 或 prompt、评估 skill 该不该写或该不该留。"
---

# Writing Concise Skills —— 写责任，别写步骤

写 skill 时按此流程；要细节时读对应章节或 cheatsheet.md。

## 写作流程（每步有可检查的完成标准）

1. **定职责** — 补什么上下文？守什么门槛？
   - ✅ 两问有明确答案，且答案不是"教模型怎么做"
2. **写 12 行样板** — 目标 + 边界 + 触发场景 + 一条验收标准
   - ✅ ≤12 行、一张截图放得下、三句话讲明白
3. **渐进式披露** — 主文件只留每个分支都需要的，细节拆文件并登记索引
   - ✅ 主文件每句都是全分支共享；其余已拆出
4. **反模式自查** — 逐个对照下方清单
   - ✅ 5 条全部确认不命中
5. **两周后检验** — 在用则留，积灰则删
   - ✅ 每个 skill 都有在用/积灰判定

## 原则（决定每一步怎么写）

- **写责任，别写步骤。** Prompt 不会复利，Context 才会。
- **薄驾驭，厚上下文。** 缰绳几根就够，地图必须准。
- **补上下文，守门槛。** 两问答不上，就别写。
- **12 行样板。** 小、单用途、手动触发、鼓励改。
- **少即是多。** 装得多，不仅更危险，而且更笨。
- **两周检验。** 拥有不算数，用起来才算数。

## 反模式（配正向替代）

- **紧箍咒**：规则堆积互相打架 → 删规则，不是加规则
- **教程化**：教模型怎么做 → 改写成责任状
- **上下文倾倒**：资料全倒进窗口 → 按需披露
- **追问疲劳**：问题连环拖垮流程 → 逼出共识即停
- **大而全**：一个 skill 什么都做 → 单用途，拆

## 章节

| # | 章节 | 核心框架 |
|---|------|---------|
| [ch01](chapters/ch01-why-rules-fail.md) | 为什么详细规则会失败 | 紧箍咒效应 |
| [ch02](chapters/ch02-thin-harness-thick-context.md) | Thin harness, thick context | 渐进式披露 |
| [ch03](chapters/ch03-what-skills-are-worth.md) | Skill 值钱在哪 | 补上下文、守门槛 |
| [ch04](chapters/ch04-grill-me-case-study.md) | grill-me 案例 | 圈层型爆款、数据信号 |
| [ch05](chapters/ch05-ecosystem-positions.md) | 生态定位 | 库派 vs 框架派 |
| [ch06](chapters/ch06-cold-water-anti-patterns.md) | 冷水与反模式 | 触发问题、star≠成熟 |
| [ch07](chapters/ch07-key-takeaways.md) | 行动清单 | 写作四步法、两周检验 |

支持文件：[glossary.md](glossary.md) · [patterns.md](patterns.md) · [cheatsheet.md](cheatsheet.md)

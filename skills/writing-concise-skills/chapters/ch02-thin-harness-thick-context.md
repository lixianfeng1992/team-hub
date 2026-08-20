# Ch 2: Thin Harness, Thick Context —— 核心框架

## Core Idea
AI 越聪明，越该轻驾驭、重上下文：缰绳不需要八百根，但地图得准。

## Frameworks Introduced
- **Thin harness, thick context（薄驾驭、厚上下文）**：控制要少而精，上下文要多而准
  - When to use: 设计任何 prompt、system prompt、skill 的结构时
  - How:
    1. Harness（缰绳）：只留真正关键的边界和约束
    2. Context（上下文）：给全现场 —— 项目为什么存在、之前做过什么决定、踩过什么坑、用户喜欢什么、按什么标准验收
- **渐进式披露（Progressive Disclosure）**：上下文按需加载，而不是一次全倒进窗口
  - When to use: 内容多到放不下时
  - How: 代码审查时才加载审查规范，需要验证时才加载测试标准；像老中医 —— 先望闻问切，再按症开方
- **Prompt 与 Context 之分**：`"帮我设计个官网"` 是 Prompt；品牌规范、用户画像、旧页面、转化目标、验收清单才是 Context

## Key Concepts
- **Prompt 不会复利**：单次指令，用完即焚
- **Context 会复利**：可沉淀、可复用、越积累越值钱
- **责任状（charter）**：强模型时代的 skill 定位 —— 团队经验的责任状和门槛，不是步骤清单

## Mental Models
- Harness 是缰绳和刹车，Context 是地图和路况
- 轻驾驭不是没边界：边界仍在，只是少而准

## Anti-patterns
- **上下文倾倒（context dumping）**：把资料全倒进窗口 ≠ 给上下文，要按需披露
- **假自由**：删了规则却什么上下文都不给，等于让模型裸奔

## Key Takeaways
1. 给弱模型写步骤，给强模型写责任
2. Skill 不是步骤清单，是补上下文 + 守门槛
3. 上下文 = 模型进现场后能看到的真实情况，重点是"现场"
4. 按需加载，渐进式披露

## Connects To
- **Ch 1**: 紧箍咒的解法
- **Ch 3**: skill 的两件事 —— 补上下文、守门槛

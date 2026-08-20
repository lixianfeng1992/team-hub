# Ch 6: 一些冷水 —— 反模式与清醒剂

## Core Idea
Skill 范式有真实的天花板：不触发就无收益，爆款作者自己也停用，star 衡量的是热情不是成熟度。

## Frameworks Introduced
- **反模式清单（Cold-water audit）**：写 skill 前先对照的四个冷水点
  1. **作者降级**：grill-me 被 Pocock 自己停用（issue #274："absolutely horrendous"）—— 加了 grilling 后架构改进会连续追问上百个问题，拖近两小时；改推 grill-with-docs。出圈单品被降级为窄场景压力测试
  2. **不触发就无收益**：Vercel 受控评测 —— 56% 案例中 skill 从未被调用；装了 skill 的通过率与无文档基线完全相同
  3. **star ≠ 成熟**：这套 skills 是单一工程师口味（重度 TypeScript、深绑 GitHub Issues）；没有数据能回答"多少团队真跑进了日常流程"
  4. **范式天花板**：skill 只在被触发、且有上下文缺口时才产生价值

## Key Concepts
- **触发问题（Trigger problem）**：skill 的价值完全依赖触发时机；不触发 = 零收益
- **窄场景**：一个 skill 的适用场景越窄，越难在真实工作中被触发

## Mental Models
- star velocity 衡量的是热情，不是成熟度
- 拥有 skill 不算数，两周后还在用的才算（健身器材逻辑）

## Anti-patterns
- **追问疲劳（grilling overload）**：连续几十上百个问题 = 流程成本爆炸
- **信仰式安装**：不验证触发率、不清理积灰的 skill

## Key Takeaways
1. 写完 skill 要问：它会被触发吗？触发后收益大于追问成本吗？
2. 控制问题数量 —— 追问是手段，逼出共识才是目的
3. 用两周检验标准：装进流程两周后还在用的留下，积灰的删掉

## Connects To
- **Ch 3**: 补上下文守门槛 —— 但门槛过高会变成负担
- **Ch 7**: 冷水之后是行动清单

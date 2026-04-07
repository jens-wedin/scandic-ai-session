---
name: scandic-design-critique
description: Principle-based design critique that systematically evaluates designs against Scandic's 8 core design principles. Produces a scorecard with pass/concern/fail ratings and prioritized actions.
user-invocable: true
---

# Design Critique

You are conducting a principle-based design critique for the Scandic product design team. Systematically evaluate the design against each of Scandic's 8 design principles and produce a structured scorecard.

This is not a general design review — it is a focused evaluation of how well a design adheres to the team's shared principles.

## When to Use

- Evaluating a design before handoff or review
- Checking a design against team standards before presenting to stakeholders
- Self-reviewing your own work against the principles
- Comparing two design approaches by scoring each
- Retrospective critique of shipped designs

## Critique Process

For each of the 8 principles below, evaluate the design and assign a rating:
- **Pass** — the design clearly satisfies this principle
- **Concern** — partial adherence or room for improvement
- **Fail** — the design violates or ignores this principle

Be specific. Reference exact elements, flows, or decisions as evidence.

## The 8 Principles

### 1. Start with User Needs
- Is this solving a real, validated user problem?
- Is the solution shaped by evidence (research, data, feedback)?
- Is success defined from the user's perspective?
- Check: can you articulate the user need this design addresses?

### 2. Accessible First
- Is accessibility built in, not bolted on?
- WCAG 2.2 AA compliance: contrast, keyboard nav, screen reader support?
- Are all disability types considered (visual, motor, cognitive, auditory, situational)?
- Check: "Can everyone use this?" — answered before "Does this look good?"

### 3. Simple by Default
- Does every element earn its place?
- Is there one clear primary action per view?
- Is progressive disclosure used where appropriate?
- Check: could anything be removed without losing meaning?

### 4. Consistent, Not Uniform
- Does it use existing design system components and patterns?
- Are interaction patterns consistent with the rest of the product?
- If it diverges from the system, is the divergence intentional and justified?
- Check: would a user recognize this as the same product?

### 5. Mobile First, Responsive Always
- Was this designed for the smallest screen first?
- Are touch targets adequate (44px recommended)?
- Is content priority clear at every breakpoint?
- Check: does it work well at 320px, 768px, 1024px, and 1440px?

### 6. Performance is a Feature
- Are images optimized and lazy-loaded below the fold?
- Is the design achievable without heavy JavaScript or large assets?
- Would this load in < 3 seconds on a 3G connection?
- Check: is every visual element worth its weight in kilobytes?

### 7. Design with Data
- Can the impact of this design be measured?
- Are there analytics or success metrics defined?
- If the approach is uncertain, is there a plan to test (A/B, usability)?
- Check: how will you know if this design works?

### 8. Inclusive Language and Content
- Is the copy in plain language, free of jargon?
- Is terminology gender-neutral and non-ableist?
- Are error messages helpful, not blaming?
- Check: is this culturally appropriate across Nordic markets?

## Output Format

### Scorecard

```
| #  | Principle                      | Rating  |
|----|--------------------------------|---------|
| 1  | Start with User Needs          | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 2  | Accessible First               | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 3  | Simple by Default              | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 4  | Consistent, Not Uniform        | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 5  | Mobile First, Responsive Always| ✅ Pass / ⚠️ Concern / ❌ Fail |
| 6  | Performance is a Feature       | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 7  | Design with Data               | ✅ Pass / ⚠️ Concern / ❌ Fail |
| 8  | Inclusive Language and Content  | ✅ Pass / ⚠️ Concern / ❌ Fail |
```

**Overall**: X/8 Pass, X/8 Concern, X/8 Fail

### Detailed Findings

For each principle rated **Concern** or **Fail**, provide:

**[Principle name]** — [Rating]
- **Evidence**: What specifically was observed
- **Impact**: Why this matters for users
- **Action**: Concrete step to improve the rating

### Strengths

Highlight 2-3 principles where the design excels, with specific evidence.

### Priority Actions

Numbered list of the most important changes, ordered by:
1. Fail items first (blocking issues)
2. Concern items second (improvement opportunities)
3. Quick wins last (low effort, high value)

## Tips for Better Critiques

- Ask for context if you don't have it — don't guess at user needs or data
- Be honest but constructive — every critique should include a path forward
- "Not applicable" is valid if a principle genuinely doesn't apply (explain why)
- Reference `~/.claude/shared/design-principles.md` for the full principle details
- Use this alongside `/scandic-design` for a complete review (principles + visual quality)

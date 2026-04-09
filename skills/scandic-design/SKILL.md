---
name: scandic-design
description: Design review, critique, and component analysis for Scandic product design. Provides structured feedback on visual hierarchy, spacing, typography, color, and design system consistency.
user-invocable: true
---

# Design Review

You are conducting a design review for the Scandic product design team. Apply Scandic's design principles: Scandinavian simplicity, warmth, accessibility-first, and consistency with the design system.

## When to Use

- Reviewing a UI design, component, or layout
- Critiquing visual hierarchy, spacing, or typography choices
- Analyzing design system consistency
- Evaluating a component's structure and variants
- Comparing a Figma design to its implementation

## Review Process

1. **Understand context**: What is being reviewed? (component, page, flow, pattern)
2. **Check design system alignment**: Does it use existing tokens, components, and patterns?
3. **Evaluate visual hierarchy**: Is the information hierarchy clear? Are primary actions obvious?
4. **Assess spacing and layout**: Consistent use of spacing tokens? Proper alignment and grid usage? Generous whitespace (64–96px between major sections)? Content constrained to ~1200px max-width?
5. **Review typography**: Fira Sans used? Correct weights per role (700 hero, 600 section, 500 sub, 400 body)? Letter-spacing `0.012em` on buttons and UI labels? Readable line lengths (65–75 chars)?
6. **Check color usage**: Signal Red (`#cd0921`) used only for CTAs and primary highlights? Nordic Trust Blue (`#004a99`) for secondary/trust elements? Red-leads-blue-supports hierarchy maintained? Deep Charcoal (`#1a1a1a`) for body text? Sufficient contrast? No color as sole indicator?
7. **Consider responsiveness**: Desktop (1200px+), tablet (768–1199px), mobile (<768px)? Touch targets 44px minimum (48px on mobile)? Booking flow always accessible?
8. **Evaluate states**: All states covered? (default, hover, focus, active, disabled, loading, empty, error)
9. **Evaluate imagery direction**: Does photography follow analog warmth philosophy? Emotional micro-moments over product shots? Real people, not models? Warm natural lighting? Inclusive representation? Full-bleed and immersive?
10. **Check brand voice**: Is copy warm and friendly ("your friend in town")? CTAs action-oriented and short? Messaging occasion-aware (business efficiency, family warmth, weekend indulgence)? Brand carriers used (concrete sensory details over abstract promises)?
11. **Check component styling**: Buttons use pill shape (border-radius: 250px)? Cards have 8–12px rounded corners? Subtle shadows (`0 1px 3px rgba(0,0,0,0.08)`)? Booking bar pattern followed? Flat-first approach maintained?

## Output Format

Structure your feedback as:

### Summary
One-sentence assessment of the design.

### Strengths
- What works well (be specific — reference elements, spacing values, patterns)

### Issues
For each issue:
- **What**: describe the problem
- **Where**: identify the specific element or area
- **Why**: explain the impact (usability, consistency, accessibility)
- **Suggestion**: propose a concrete fix

### Recommendations
- Prioritized list of improvements
- Reference design system components or tokens where applicable

## Figma Context

When discussing Figma files:
- Reference layer names, component names, and variant properties
- Consider auto-layout structure and constraints
- Note if components should use existing library components vs. custom designs
- Flag any detached instances or overridden tokens

## Principles to Apply

- Less is more — remove before adding
- Consistency over novelty — use the design system
- Accessibility is non-negotiable
- Every element should earn its place
- Authenticity over perfection — emotional resonance matters more than visual polish
- Design for travel occasions, not personas
- Connect brand values to tangible, sensory experiences (brand carriers)

## Reference

For specific color values, typography rules, component styles, and responsive breakpoints, refer to `~/.claude/shared/DESIGN.md`.

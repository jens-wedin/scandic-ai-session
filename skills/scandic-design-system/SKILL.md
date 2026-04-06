---
name: scandic-design-system
description: Bridge between Figma design tokens and Storybook components. Helps with token naming, component API review, and Figma-to-code consistency for Scandic's design system.
user-invocable: true
---

# Design System

You are helping the Scandic product design team maintain consistency between their Figma design system and Storybook component library.

## When to Use

- Reviewing or defining design tokens (colors, spacing, typography, shadows)
- Auditing component consistency between Figma and code
- Designing component APIs (props, variants, slots)
- Naming conventions for tokens, components, or variants
- Planning new components or extending existing ones
- Documenting component usage guidelines

## Figma ↔ Storybook Sync

### Token Architecture
```
Global tokens → Semantic tokens → Component tokens
     ↓                ↓                  ↓
  color-blue-500   color-primary     button-bg-primary
  space-16         space-section     card-padding
```

- **Global tokens**: Raw values (colors, sizes, spacing scale)
- **Semantic tokens**: Purpose-driven aliases (primary, secondary, surface, error)
- **Component tokens**: Component-specific mappings (button-bg, card-border)

### Naming Convention
```
[category]-[property]-[variant]-[state]

Examples:
  color-text-primary
  color-bg-surface
  color-border-error
  space-inline-sm
  space-stack-lg
  font-size-heading-lg
  radius-md
  shadow-card
```

## Component Review Checklist

When reviewing a component:

### Design (Figma)
- [ ] Uses existing tokens — no hardcoded values
- [ ] All states documented (default, hover, focus, active, disabled, loading, error)
- [ ] Responsive behavior defined (breakpoints, wrapping, truncation)
- [ ] Variants organized logically (size, variant, state)
- [ ] Auto-layout used correctly (padding, gap, fill/hug)
- [ ] Accessible: meets contrast requirements, has focus states

### Code (Storybook)
- [ ] Props mirror Figma variants
- [ ] Uses CSS custom properties (design tokens), no magic numbers
- [ ] All states implemented and documented in stories
- [ ] Keyboard accessible
- [ ] ARIA attributes correct
- [ ] Responsive behavior matches Figma
- [ ] TypeScript props interface is clean and well-documented

### Consistency
- [ ] Visual output matches Figma at all breakpoints
- [ ] Naming is aligned (Figma component name = code component name)
- [ ] Variants and props use the same terminology
- [ ] Spacing, colors, and typography match exactly via tokens
- [ ] Documentation in Storybook matches Figma usage guidelines

## Output Format

### Component Audit
```
## [Component Name] Audit

### Status: Aligned / Drifted / Missing

### Token Usage
- ✅ Correctly using: [tokens]
- ❌ Hardcoded values found: [values that should be tokens]
- ⚠️ Missing tokens needed: [new tokens to create]

### Figma ↔ Code Comparison
| Property       | Figma          | Code           | Match? |
|----------------|----------------|----------------|--------|
| Padding        | space-16       | var(--space-16)| ✅     |
| Background     | #1a73e8        | hardcoded      | ❌     |

### Recommendations
1. [Specific actions to align]
```

### Token Proposal
```
## New Token: [name]

- **Category**: color / space / font / radius / shadow
- **Value**: [value]
- **Semantic purpose**: [what it represents]
- **Used by**: [which components will use it]
- **Replaces**: [any hardcoded values it replaces]
```

## Principles

- Tokens are the single source of truth — if it's not a token, it should be
- Prefer semantic tokens over global tokens in component code
- Components should be composable and not assume their context
- Document the "why" not just the "what"
- Breaking changes require migration paths

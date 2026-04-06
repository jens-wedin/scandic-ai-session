# Role: Design Systems Designer

Use this configuration if your primary role is maintaining and evolving Scandic's design system.

## Focus Areas

- Component architecture and design in Figma
- Token management (colors, spacing, typography, shadows)
- Storybook component library (React + core components)
- Figma ↔ code consistency
- Component documentation and usage guidelines
- Design system governance and contribution workflows

## Key Responsibilities

### Token Management
- Define and maintain global, semantic, and component-level tokens
- Ensure tokens sync between Figma and code (CSS custom properties)
- Review token naming: `[category]-[property]-[variant]-[state]`
- Audit for hardcoded values that should be tokens

### Component Design
- Design components that are composable, accessible, and responsive
- Define all states: default, hover, focus, active, disabled, loading, error, empty
- Document variant logic: when to use which variant
- Ensure auto-layout in Figma matches CSS flexbox/grid in code

### Storybook Maintenance
- Keep stories in sync with Figma component specs
- Document props, variants, and usage guidelines
- Include accessibility annotations in stories
- Maintain visual regression tests

### Governance
- Review contributions to the design system
- Maintain changelog and versioning
- Plan deprecation and migration paths for breaking changes
- Communicate updates to the broader design and development teams

## Useful Skills

- `/design-system` — audit component consistency and token usage
- `/a11y` — verify components meet accessibility standards
- `/design` — review visual quality of new components

## Common Tasks

- "Audit this component for token usage and Figma consistency"
- "Propose a naming convention for these new tokens"
- "Review this component's prop API"
- "Help document this component's usage guidelines"
- "Check if this component exists in the library or needs to be created"

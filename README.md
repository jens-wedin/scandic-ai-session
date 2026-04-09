# Scandic Product Design — Claude Code Configuration

Shared Claude Code configuration for the Scandic product design team. Install once, get a consistent AI-assisted design workflow across the team.

## Quick Start

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/install.sh | bash
```

This installs shared configuration, skills, and reference files to your `~/.claude/` directory.

## What Gets Installed

| File | Install Location | Purpose |
|------|-----------------|---------|
| [CLAUDE.md](shared/home-claude.md) | `~/.claude/CLAUDE.md` | Global config — brand, principles, preferences |
| [`/scandic-design`](skills/scandic-design/SKILL.md) | `~/.claude/skills/scandic-design/` | Design review, critique, component analysis |
| [`/scandic-research`](skills/scandic-research/SKILL.md) | `~/.claude/skills/scandic-research/` | UX research synthesis and analysis |
| [`/scandic-a11y`](skills/scandic-a11y/SKILL.md) | `~/.claude/skills/scandic-a11y/` | Accessibility audit, WCAG 2.2 AA compliance |
| [`/scandic-design-system`](skills/scandic-design-system/SKILL.md) | `~/.claude/skills/scandic-design-system/` | Figma ↔ Storybook consistency |
| [`/scandic-design-critique`](skills/scandic-design-critique/SKILL.md) | `~/.claude/skills/scandic-design-critique/` | Principles-based design critique scorecard |
| [Design system](shared/DESIGN.md) | `~/.claude/shared/DESIGN.md` | Complete design system — colors, typography, components, imagery, brand strategy |
| [Brand guidelines](shared/scandic-brand.md) | `~/.claude/shared/scandic-brand.md` | Scandic brand voice and values |
| [Design principles](shared/design-principles.md) | `~/.claude/shared/design-principles.md` | Core design principles |
| [Role: design systems](shared/roles/design-systems.md) | `~/.claude/shared/roles/design-systems.md` | Role config for design systems designers |
| [Role: product discovery](shared/roles/product-discovery.md) | `~/.claude/shared/roles/product-discovery.md` | Role config for product discovery |
| [Role: UI & accessibility](shared/roles/design-ui-accessibility.md) | `~/.claude/shared/roles/design-ui-accessibility.md` | Role config for UI & a11y designers |
| [Prompt starters](shared/templates/prompt-starters.md) | `~/.claude/shared/templates/prompt-starters.md` | Ready-to-use prompts |

### Non-destructive

The installer **never overwrites** existing files. If a file already exists, it's skipped. To update files, re-run with `--force` (creates timestamped backups first):

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/install.sh | bash -s -- --force
```

## Skills

### `/scandic-design` — Design Review
Structured design critique covering visual hierarchy, spacing, typography, color usage, and design system consistency. Get feedback formatted as Strengths, Issues, and Recommendations. [View skill →](skills/scandic-design/SKILL.md)

### `/scandic-research` — UX Research
Synthesize interview notes, conduct competitive analysis, plan research activities, and create structured outputs like insight cards and journey map annotations. [View skill →](skills/scandic-research/SKILL.md)

### `/scandic-a11y` — Accessibility Audit
WCAG 2.2 AA compliance review covering contrast, keyboard navigation, screen reader support, focus management, and touch targets. Issues categorized as Critical, Major, or Minor. [View skill →](skills/scandic-a11y/SKILL.md)

### `/scandic-design-system` — Design System
Bridge between Figma design tokens and Storybook components. Audit token usage, review component APIs, and check Figma-to-code consistency. [View skill →](skills/scandic-design-system/SKILL.md)

### `/scandic-design-critique` — Design Critique
Systematic evaluation of a design against Scandic's 11 core design principles. Produces a scorecard (pass/concern/fail per principle), visual specification checks, detailed findings, and prioritized actions. [View skill →](skills/scandic-design-critique/SKILL.md)

## Project-Level Setup

The installer sets up your personal `~/.claude/` config. For project-specific configuration, copy the [example CLAUDE.md](CLAUDE.md) to your project repo and customize it:

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/CLAUDE.md -o ./CLAUDE.md
```

Then edit the `<!-- TODO -->` sections with your project's stack, architecture, and conventions.

## Role Configurations

The `shared/roles/` directory contains role-specific context files:

- [**Design systems**](shared/roles/design-systems.md) — Token management, component architecture, Figma ↔ Storybook sync
- [**Product discovery**](shared/roles/product-discovery.md) — Interviews, synthesis, journey mapping
- [**UI & accessibility**](shared/roles/design-ui-accessibility.md) — WCAG compliance, inclusive patterns, assistive tech testing

These are installed as reference files in `~/.claude/shared/roles/`.

## Shared References

- [Design system](shared/DESIGN.md) — Complete design system specification: colors, typography, components, imagery direction, brand strategy, and responsive behavior. **The authoritative source for visual specifications.**
- [Scandic brand guidelines](shared/scandic-brand.md) — Brand values, voice, tone, visual direction
- [Design principles](shared/design-principles.md) — 11 core principles guiding every design decision
- [Prompt starters](shared/templates/prompt-starters.md) — Ready-to-use prompts for design review, research, a11y, and more

## Uninstalling

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/uninstall.sh | bash
```

This removes all installed files and cleans up empty directories. Backup files (from `--force` installs) are preserved — the script will tell you how to remove them if any exist.

## Contributing

To update shared configuration:
1. Edit files in this repo
2. Open a PR for team review
3. After merge, team members re-run the install command with `--force`

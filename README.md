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
| `CLAUDE.md` | `~/.claude/CLAUDE.md` | Global config — brand, principles, preferences |
| `/design` skill | `~/.claude/skills/design/` | Design review, critique, component analysis |
| `/research` skill | `~/.claude/skills/research/` | UX research synthesis and analysis |
| `/a11y` skill | `~/.claude/skills/a11y/` | Accessibility audit, WCAG 2.2 AA compliance |
| `/design-system` skill | `~/.claude/skills/design-system/` | Figma ↔ Storybook consistency |
| Brand guidelines | `~/.claude/shared/scandic-brand.md` | Scandic brand voice and values |
| Design principles | `~/.claude/shared/design-principles.md` | Core design principles |
| Role configs | `~/.claude/shared/roles/` | Role-specific setups |
| Prompt starters | `~/.claude/shared/templates/prompt-starters.md` | Ready-to-use prompts |

### Non-destructive

The installer **never overwrites** existing files. If a file already exists, it's skipped. To update files, re-run with `--force` (creates timestamped backups first):

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/install.sh | bash -s -- --force
```

## Skills

### `/design` — Design Review
Structured design critique covering visual hierarchy, spacing, typography, color usage, and design system consistency. Get feedback formatted as Strengths, Issues, and Recommendations.

### `/research` — UX Research
Synthesize interview notes, conduct competitive analysis, plan research activities, and create structured outputs like insight cards and journey map annotations.

### `/a11y` — Accessibility Audit
WCAG 2.2 AA compliance review covering contrast, keyboard navigation, screen reader support, focus management, and touch targets. Issues categorized as Critical, Major, or Minor.

### `/design-system` — Design System
Bridge between Figma design tokens and Storybook components. Audit token usage, review component APIs, and check Figma-to-code consistency.

## Project-Level Setup

The installer sets up your personal `~/.claude/` config. For project-specific configuration, copy the example `CLAUDE.md` to your project repo and customize it:

```bash
curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/CLAUDE.md -o ./CLAUDE.md
```

Then edit the `<!-- TODO -->` sections with your project's stack, architecture, and conventions.

## Role Configurations

The `shared/roles/` directory contains role-specific context files:

- **`design-systems.md`** — For design systems designers (token management, component architecture, Figma ↔ Storybook sync)
- **`product-discovery.md`** — For product discovery and research (interviews, synthesis, journey mapping)
- **`design-ui-accessibility.md`** — For UI and accessibility designers (WCAG compliance, inclusive patterns, assistive tech testing)

These are installed as reference files in `~/.claude/shared/roles/`.

## Prompt Starters

Check `~/.claude/shared/templates/prompt-starters.md` for ready-to-use prompts covering:
- Design review and critique
- Research synthesis and planning
- Accessibility audits and annotations
- Design system audits and documentation
- Copy review and responsive strategy

## Uninstalling

Remove the installed files:

```bash
rm ~/.claude/CLAUDE.md
rm -rf ~/.claude/skills/{design,research,a11y,design-system}
rm -rf ~/.claude/shared
```

## Contributing

To update shared configuration:
1. Edit files in this repo
2. Open a PR for team review
3. After merge, team members re-run the install command with `--force`

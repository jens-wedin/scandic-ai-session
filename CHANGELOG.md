# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-04-09

### Added
- Comprehensive design system specification (`shared/DESIGN.md`) as the single source of truth for Scandic's visual identity — colors, typography, components, imagery direction, brand strategy, and responsive behavior
- Five Claude Code skills for the design team:
  - `/scandic-design` — structured design review with Scandic-specific color, typography, imagery, and component checks
  - `/scandic-design-critique` — principle-based critique scorecard evaluating designs against 11 core principles plus visual specification checks
  - `/scandic-a11y` — WCAG 2.2 AA accessibility audit with Scandic-specific contrast ratios and touch target requirements
  - `/scandic-design-system` — Figma-to-Storybook consistency with Scandic token reference table (17 core tokens)
  - `/scandic-research` — UX research synthesis with travel occasions model and GEMIC research context
- Brand guidelines (`shared/scandic-brand.md`) aligned with DESIGN.md: brand promise "The most comfortable stay," specific color palette (Signal Red `#cd0921`, Nordic Trust Blue `#004a99`), Fira Sans typography, analog warmth photography direction
- 11 design principles including Authenticity Over Perfection, Design for Occasions Not Personas, and Connect Values to Tangible Experiences
- Three role configurations: Design Systems, Product Discovery, UI & Accessibility
- Ready-to-use prompt starters for color palette checks, typography audits, photography direction reviews, brand voice checks, and occasion-aware design
- Global Claude Code configuration (`home-claude.md`) with brand context and DESIGN.md reference
- Project-level CLAUDE.md template with design system reference and example tokens
- Install script with non-destructive installation and `--force` option with backups
- Uninstall script for clean removal

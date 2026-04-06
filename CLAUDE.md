# Project Configuration

<!-- TODO: Replace [PROJECT NAME] with your actual project name -->
## [PROJECT NAME]

A Scandic Hotels digital product.

<!-- TODO: Update the stack section to match your project -->
## Stack

- **Framework**: <!-- e.g., Next.js 14, Remix, Vite + React -->
- **Language**: TypeScript
- **Styling**: <!-- e.g., CSS Modules, Tailwind, Styled Components -->
- **Component library**: Scandic Storybook (React + core components)
- **Design tokens**: Figma design system → CSS custom properties
- **Testing**: <!-- e.g., Vitest, Playwright, Testing Library -->
- **Package manager**: <!-- e.g., npm, pnpm, yarn -->

## Architecture

<!-- TODO: Describe your project's directory structure -->
```
src/
├── components/     # Reusable UI components
├── pages/          # Page-level components / routes
├── styles/         # Global styles and token imports
├── utils/          # Shared utilities
└── tests/          # Test files
```

## Design System

- Figma library: <!-- TODO: Link to your Figma library -->
- Storybook: <!-- TODO: Link to your Storybook instance -->
- Use design tokens for all visual properties (colors, spacing, typography, shadows)
- Components should match Figma 1:1 — flag discrepancies

## Conventions

- **File naming**: kebab-case for files, PascalCase for components
- **Components**: one component per file, co-locate styles and tests
- **Accessibility**: every interactive element must be keyboard-accessible and have appropriate ARIA labels
- **Responsive**: mobile-first breakpoints, test at 320px, 768px, 1024px, 1440px
- **Images**: use `alt` text, support `prefers-reduced-motion`, lazy-load below the fold

## Build & Run

<!-- TODO: Update these commands for your project -->
```bash
npm install          # Install dependencies
npm run dev          # Start dev server
npm run build        # Production build
npm run test         # Run tests
npm run storybook    # Start Storybook
npm run lint         # Lint code
```

## Branch & PR Conventions

<!-- TODO: Update to match your team's workflow -->
- Branch naming: `feature/`, `fix/`, `chore/`
- PRs require design review for visual changes
- Include screenshots or Storybook links for UI changes
- Accessibility checklist must pass before merge

---
name: scandic-a11y
description: Accessibility audit and WCAG 2.2 AA compliance review for designs and code. Reviews for inclusive design, keyboard navigation, screen reader support, and assistive technology compatibility.
user-invocable: true
---

# Accessibility Audit

You are conducting an accessibility review for the Scandic product design team. At Scandic, accessibility is foundational — "everyone is welcome" means everyone can use our digital products.

## When to Use

- Reviewing a design or component for accessibility
- Auditing code for WCAG compliance
- Checking color contrast and visual accessibility
- Evaluating keyboard navigation and focus management
- Assessing screen reader compatibility
- Reviewing content for cognitive accessibility

## Audit Process

1. **Identify what's being reviewed**: Design mockup, component code, page, or flow
2. **Apply WCAG 2.2 AA criteria** systematically across categories:
   - **Perceivable**: Can all users perceive the content?
   - **Operable**: Can all users interact with the interface?
   - **Understandable**: Can all users understand the content and interface?
   - **Robust**: Does it work across assistive technologies?
3. **Categorize issues by severity**
4. **Provide remediation guidance** with specific fixes

## Checks to Perform

### Visual
- Color contrast: minimum 4.5:1 for text, 3:1 for large text and UI components
- Color not used as sole indicator of meaning
- Text resizable to 200% without loss of content
- Content reflows at 320px width (no horizontal scroll)
- Spacing adjustable (WCAG 1.4.12)
- Motion: respect `prefers-reduced-motion`

### Keyboard & Interaction
- All interactive elements reachable via Tab
- Logical tab order matching visual layout
- Visible focus indicator on all focusable elements (minimum 2px, 3:1 contrast)
- No keyboard traps
- Touch targets minimum 24x24px (44x44px recommended)
- Drag actions have keyboard alternatives

### Screen Reader
- Meaningful alt text for images (or empty `alt=""` for decorative)
- Proper heading hierarchy (h1 → h2 → h3, no skipping)
- Form inputs have associated labels
- ARIA attributes used correctly (prefer native HTML semantics first)
- Live regions for dynamic content updates
- Landmarks used appropriately (nav, main, aside, footer)

### Content & Cognitive
- Clear, plain language
- Error messages are descriptive and suggest fixes
- Instructions don't rely on sensory characteristics ("click the red button")
- Consistent navigation and labeling patterns
- Adequate timeouts with extension options

## Output Format

### Audit Summary
One-line overall assessment with pass/fail indication.

### Issues Found

For each issue, use this format:

**[Severity] [WCAG Criterion]: [Brief description]**
- **Element**: What element or area is affected
- **Problem**: What the issue is
- **Impact**: Who is affected and how
- **Fix**: Specific remediation step (code example if applicable)

### Severity Levels

- **Critical**: Blocks access entirely for some users. Fix immediately.
  - Examples: no keyboard access, missing form labels, trapped focus
- **Major**: Significant barrier but workaround exists. Fix before release.
  - Examples: insufficient contrast, missing alt text, poor heading structure
- **Minor**: Causes friction but doesn't block access. Fix in next iteration.
  - Examples: redundant ARIA, suboptimal tab order, verbose alt text

### Compliance Summary
```
| Category      | Pass | Fail | N/A |
|---------------|------|------|-----|
| Perceivable   |      |      |     |
| Operable      |      |      |     |
| Understandable|      |      |     |
| Robust        |      |      |     |
```

## Standards Reference

- **WCAG 2.2** (Level AA): Primary standard
- **WAI-ARIA 1.2**: For dynamic content and custom widgets
- **EN 301 549**: EU accessibility standard (legally relevant for Scandic)
- **EAA/European Accessibility Act**: Compliance deadline June 2025

## Scandic Context

- Scandic is a recognized leader in physical accessibility — digital must match
- Many guests have permanent, temporary, or situational disabilities
- Booking flows, room information, and check-in are critical accessibility paths
- Test with real assistive technology: VoiceOver (macOS/iOS), NVDA (Windows), TalkBack (Android)

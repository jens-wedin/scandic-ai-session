# Design System: Scandic Hotels

## 1. Visual Theme & Atmosphere

Scandic Hotels embodies **warm Nordic hospitality** — accessible, inclusive, and grounded in Scandinavian heritage. The brand exists at the intersection of functional reliability and genuine emotional warmth. Design should feel like a trusted friend, not a polished advertisement.

The visual direction prioritizes **authenticity over perfection**. Where the previous aesthetic leaned on clean, polished imagery, the updated brand embraces analog warmth, real life, and even imperfection — grainy textures, candid moments, and unstaged compositions are welcome when they convey genuine human connection. The design system supports this shift: generous white space creates breathing room, bold brand-red accents mark moments of action, and the overall restraint lets authentic content — not decoration — carry the emotional weight.

**Core identity:** Accessible hospitality, Nordic heritage, warm service atmosphere.

**Brand promise:** "The most comfortable stay" — acting as "your friend in town" to ensure every guest feels valued and at ease.

**Design for travel occasions, not personas.** Scandic targets specific travel moments (pragmatic business trips, family getaways, indulgent weekends) rather than rigid demographics. Digital touchpoints should adapt tone and emphasis to the occasion while maintaining a consistent brand foundation.

**Inclusivity is non-negotiable.** Every design decision must reinforce that Scandic is welcoming to absolutely everyone — families, solo travelers, business guests, all backgrounds. This is a core brand value, not a checkbox.

**Key adjectives:** Warm, authentic, Nordic, inclusive, approachable, trustworthy, comfortable.

## 2. Color Palette & Roles

| Descriptive Name | Hex Code | Functional Role |
|---|---|---|
| Scandic Signal Red | `#cd0921` | Primary brand color — used for CTAs, primary buttons, key highlights, and brand moments. A bold, confident red that commands attention without aggression. |
| Scandic Vivid Red | `#e30613` | Secondary red accent — used for hover states, badges, and urgent/promotional elements. Slightly brighter and more energetic than the primary. |
| Nordic Trust Blue | `#004a99` | Secondary brand color — used for secondary buttons, links, informational elements, and trust signals. A deep, dependable blue that conveys reliability. |
| Pure White | `#ffffff` | Text on colored backgrounds, primary page background. Creates the clean, airy Scandinavian feel. |
| Soft Nordic Gray | `#f4f4f4` | Surface and card backgrounds, section dividers. Adds subtle depth without visual noise. |
| Deep Charcoal | `#1a1a1a` | Primary body text. Near-black for excellent readability while feeling softer than pure black. |
| Warm Medium Gray | `#556068` | Secondary text, captions, metadata. Provides hierarchy without drawing focus. Meets 4.5:1 contrast on both white and surface backgrounds. |

**Color philosophy:** The palette is deliberately restrained — a Nordic approach where less is more. Red carries the brand energy and drives action. Blue provides trust and depth. Gray tones create a calm, breathable canvas. Avoid using red and blue in equal measure; red leads, blue supports. Colors should frame authentic content, not compete with it — the palette recedes so that real imagery and human moments take center stage.

## 3. Typography Rules

**Font family:** Fira Sans (with system-ui, Avenir, Helvetica, Arial as fallbacks).

Fira Sans is a humanist sans-serif that balances geometric precision with warmth — perfectly aligned with Scandic's Nordic-modern personality. It is highly legible at all sizes and performs well across digital platforms.

| Role | Weight | Size | Character |
|---|---|---|---|
| Hero headings | Bold (700) | 36–48px | Commanding but welcoming. Short, punchy statements. |
| Section headings | Semi-Bold (600) | 24–32px | Clear wayfinding. Establishes content hierarchy. |
| Subheadings | Medium (500) | 18–20px | Supports main headings without competing. |
| Body text | Regular (400) | 16px | Comfortable reading. Line-height 1.5 for generous spacing. |
| Captions & metadata | Regular (400) | 14px | Subtle secondary information. Uses warm medium gray. |

**Letter-spacing:** Slightly open at `0.012em` for buttons and UI labels — adds a touch of refinement without feeling tracked-out. Body text uses default spacing for natural reading flow.

## 4. Component Stylings

### Buttons

* **Primary Button:** Fully rounded pill shape (border-radius: 250px) with Scandic Signal Red (`#cd0921`) fill and white text. Generous padding (24px horizontal, 16px vertical at large size). On hover, darkens slightly to 90% opacity. Feels bold, friendly, and inviting — like a firm handshake.
* **Secondary Button:** Same pill shape with transparent background, 2px Scandic Signal Red border, and red text. On hover, gains a subtle 10% red background wash. Used for secondary actions where visual weight should be lower.
* **Icon-only Button:** Circular, using the same color system. Available in sm (32px), md (40px), and lg (48px) sizes.
* **Disabled state:** 50% opacity with pointer-events disabled. No separate color — maintains visual consistency.
* **Focus state:** 2px ring offset with primary color ring. Ensures keyboard accessibility is always visible.

### Cards & Containers

* **Hotel cards:** Clean white backgrounds on soft gray surfaces. Rounded corners (8–12px) for approachability. Subtle shadow or border to define edges without heaviness. Large lifestyle photography dominates the card, with text details below.
* **Content sections:** Alternate between white and soft gray (`#f4f4f4`) backgrounds to create visual rhythm without hard dividers.
* **Promotional banners:** May use Signal Red as background with white text for high-impact moments.

### Inputs & Forms

* **Search/Booking form:** The hero booking bar is a defining Scandic UI pattern — a prominent, always-accessible horizontal form with destination, dates, guests, and a strong red CTA button. Clean borders, white backgrounds, clear labels.
* **Text inputs:** Light border with generous internal padding. Clear placeholder text in medium gray. Focus state adds a primary-color border highlight.

### Navigation

* **Header:** Clean horizontal nav with text links. Hotels, Meetings, Business, Restaurants, Offers as primary items. Scandic logo centered or left-aligned. Loyalty program (Scandic Friends) prominently accessible.
* **Mobile:** Hamburger menu pattern with full-screen overlay. Same clean typography and generous spacing.

## 5. Layout Principles

* **Generous whitespace:** Embrace the Nordic love of space. Sections breathe with ample vertical padding (64–96px between major sections). Content never feels cramped.
* **Full-width hero imagery:** Large, atmospheric photography sets the scene at page tops. Images span edge-to-edge with text overlays using semi-transparent treatments when needed.
* **Card grids:** 2–4 column grids for hotel/destination browsing. Consistent card sizes within each row. Responsive breakpoints collapse gracefully to single columns on mobile.
* **Content width:** Body content constrained to ~1200px max-width, centered. Prevents lines from running too long for comfortable reading.
* **Visual hierarchy through scale:** Hero elements are deliberately oversized. Supporting content uses progressively smaller type and tighter spacing to establish clear information architecture.
* **Minimum touch target:** 44x44px for all interactive elements, supporting Scandic's industry-leading accessibility standards.

## 6. Depth & Elevation

* **Flat-first approach:** Most elements sit on the same plane. Scandic's design avoids heavy shadows and layering — staying true to Scandinavian minimalism.
* **Subtle card elevation:** Where cards need definition, use `box-shadow: 0 1px 3px rgba(0,0,0,0.08)` — barely there, just enough to separate from background.
* **Modal/overlay depth:** When overlays appear (booking forms, navigation menus), use a soft dark backdrop at ~40% opacity.

## 7. Imagery & Photography Style

The brand is moving away from glossy, staged, cookie-cutter hotel photography. The new creative direction embraces **authenticity over perfection** — real life, analog warmth, and genuine human connection.

* **Emotional micro-moments over product shots:** Focus on the *feeling* — cold water on skin, sinking into comfortable sheets, the first sip of morning coffee, a child's laughter in a hotel corridor. These sensory micro-moments create emotional resonance that wide-angle room shots cannot.
* **Analog warmth and imperfection:** Grainy, slightly blurry, or unstaged photos are encouraged when they convey genuine Nordic warmth, comfort, and human connection. Imperfection signals authenticity. A perfectly composed hero image is less valuable than an honest one.
* **Real people, not models:** Both guests and staff should be depicted as real, authentic individuals. No staged poses, no stock-photo smiles. Capture people in the middle of actual moments — reading, laughing, arriving, resting.
* **Warm, natural lighting:** Golden-hour warmth, natural daylight, cozy ambient lighting. No harsh flash or clinical studio setups. The light should feel like the room itself is welcoming you.
* **Nordic context, not postcard views:** Show the texture of Nordic life — rain on a window, birch trees, worn wooden floors, a quiet street at dusk — not just famous landmarks. The photography communicates "this is how it feels to be here."
* **Inclusive representation:** Every image set must reflect the full range of Scandic's guests — families, solo travelers, couples, business guests, all ages, all backgrounds. Inclusivity is visible, not assumed.
* **Full-bleed and immersive:** Images are large and set emotional context before the user reads a word. Let the photography breathe — don't crop the feeling out of a moment.

## 8. Accessibility & Inclusive Design

Scandic has a 100+ point accessibility standard — the most comprehensive in the hotel industry. This extends to digital design:

* **Color contrast:** All text meets WCAG 2.1 AA minimum (4.5:1 for body text, 3:1 for large text). Signal Red on white achieves ~5.6:1.
* **Focus indicators:** Visible focus rings on all interactive elements. Never remove outline without providing an equivalent.
* **Semantic HTML:** Proper heading hierarchy, landmark regions, and ARIA labels throughout.
* **Touch targets:** Minimum 44x44px for all interactive elements.
* **Screen reader support:** All images have meaningful alt text. Decorative images are hidden from assistive technology.
* **Keyboard navigation:** Full functionality accessible via keyboard alone.

## 9. Brand Voice in UI

* **Brand promise:** "The most comfortable stay" — "your friend in town." Warm, personal, approachable. Every piece of copy should feel like helpful advice from someone who knows the city and cares about your comfort.
* **Microcopy tone:** Friendly and clear. "Book your stay" not "Reserve accommodation." "Learn more" not "Click here for additional information." Strip away marketing jargon — say what you mean, directly.
* **CTAs:** Action-oriented, short. "Explore," "Book now," "Learn more," "Join Scandic Friends."
* **Occasion-aware messaging:** Adapt tone to the travel occasion. A business traveler needs efficiency ("Quick check-in, strong Wi-Fi, great sleep"). A family needs reassurance ("Kids eat free, extra beds, space to play"). The voice is always Scandic, but the emphasis shifts.
* **Value messaging:** Sustainability, accessibility, and loyalty benefits are communicated naturally — integrated into the experience, not shouted.
* **Brand carriers in copy:** Connect high-level brand values to tangible experiences. Don't say "we care about comfort" — say "your bed is ready, your coffee is hot, your room is quiet." Ground abstract promises in specific, sensory details.

## 10. Do's and Don'ts

### Do's
* Use generous white space — let the Nordic aesthetic breathe
* Lead with authentic, emotionally resonant photography — micro-moments over product shots
* Keep the booking flow front and center on every page
* Use Signal Red sparingly for maximum impact on CTAs
* Maintain accessibility as a non-negotiable baseline — Scandic is for everyone
* Write in a warm, friendly tone — "your friend in town"
* Design for travel occasions — adapt emphasis to the moment (business efficiency, family warmth, weekend indulgence)
* Embrace analog warmth and imperfection in imagery — grainy and real beats glossy and staged
* Show real people in real moments — staff and guests as authentic individuals
* Connect brand promises to tangible, sensory experiences ("brand carriers")
* Ensure every image set reflects inclusive, diverse representation

### Don'ts
* Don't use red and blue in equal proportion — red leads, blue supports
* Don't crowd content — Scandinavian design values restraint
* Don't use glossy, staged, cookie-cutter hotel photography — authenticity is the new standard
* Don't sacrifice accessibility for visual effect
* Don't use more than two heading levels on a single card
* Don't apply heavy drop shadows or gradients — stay flat and clean
* Don't rely on marketing jargon — say what you mean, directly
* Don't design for demographic personas — design for travel occasions
* Don't prioritize visual polish over emotional resonance — a perfect photo that feels nothing is worse than an imperfect one that feels real
* Don't assume inclusivity — make it visible in imagery, copy, and interaction design

## 11. Brand Strategy Context

This design system is informed by Scandic's integrated brand and CX strategy. Understanding the strategic context helps make better design decisions.

### Research Foundation (GEMIC)
Qualitative and quantitative research revealed that Scandic is perceived as highly functional, reliable, and accessible — but lacks emotional resonance. Customers view the brand as a safe "pain reliever" option. The design system must close this emotional gap while preserving Scandic's core strengths.

### Travel Occasions Model
Scandic has shifted from targeting demographic personas to targeting **travel occasions** — specific moments where guests have distinct needs and emotional states. Digital experiences should recognize and adapt to these occasions:

* **Pragmatic business travel** — efficiency, reliability, seamless booking
* **Family getaways** — reassurance, space, welcome for children
* **Romantic/indulgent weekends** — comfort, atmosphere, sensory delight
* **Group/meeting travel** — coordination, flexibility, professionalism

The design system provides a consistent foundation, but components and content patterns should flex to serve different occasions.

### Brand Carriers
The strategy connects abstract brand values to tangible guest experiences called "brand carriers" — e.g., "a warm welcome," "a good night's sleep," "a great breakfast." These carriers dictate how both physical hotel concepts and digital touchpoints are designed. When building UI, ask: *which brand carrier does this touchpoint serve?*

### Adapted Brand Platform
The current platform strips away unnecessary marketing jargon to focus on Scandic's enduring fundamentals: accessible hospitality, Nordic heritage, and warm service atmosphere. A full brand renewal will follow once research insights are finalized — the design system should be built to evolve gracefully.

## 12. Responsive Behavior

* **Desktop (1200px+):** Full multi-column layouts, hero imagery at full viewport width, horizontal booking bar.
* **Tablet (768–1199px):** Grids reduce to 2 columns, booking form may stack vertically, navigation collapses to hamburger.
* **Mobile (< 768px):** Single column layout, sticky booking CTA at bottom, full-screen navigation overlay, images scale proportionally. Touch targets increase to 48px minimum.
* **All breakpoints:** Typography scales fluidly. Spacing proportions are maintained. Content priority remains consistent — booking always accessible, hero messaging always visible.

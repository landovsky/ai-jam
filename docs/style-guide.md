# AI Jam Style Guide

A comprehensive design system for building consistent, on-brand pages for the AI Jam community.

## Design Philosophy

The AI Jam design system embodies a **brutalist-inspired, playful, and approachable** aesthetic that reflects our community values:

- **Stop Watching, Start Building** - Practical over theoretical
- **No Experts** - We're all learning together
- **No Judgment** - Failures are as valuable as successes
- **Hands-On** - Focus on doing, not just talking

The visual language should feel:
- **Bold and confident** - Heavy borders, strong shadows, high contrast
- **Playful and approachable** - Slight rotations, hover animations, friendly colors
- **Accessible and inclusive** - Clear hierarchy, readable fonts, welcoming tone
- **Anti-hype** - Honest, straightforward, no marketing fluff

---

## Color Palette

### Primary Colors

**Stone (Neutral)**
- `stone-900` (`#1c1917`) - Primary text, borders, shadows
- `stone-800` - Secondary text
- `stone-700` - Body text, secondary elements
- `stone-600` - Subtitles, muted text
- `stone-500` - Metadata, timestamps
- `stone-400` - Footer text
- `stone-100` - Subtle borders
- `stone-50` - Input backgrounds

**Amber/Orange (Brand)**
- `amber-50` - Page background (alternating sections)
- `amber-100` - Section backgrounds, icon containers
- `amber-400` - CTA sections, highlights
- `orange-500` - Primary CTA buttons
- `orange-300` - Active states, accents
- `orange-200` - Tag backgrounds

**White**
- `white` - Card backgrounds, button backgrounds, form containers

### Accent Colors (Used Sparingly)

- `sky-200` - Icon backgrounds (pragmatist card)
- `lime-200` - Icon backgrounds (learner card)
- `purple-200` - Tag backgrounds
- `green-200` - Tag backgrounds
- `yellow-200` - Tag backgrounds
- `slate-100` - Image placeholders

### Shadow Color

- `#1c1917` (stone-900) - All shadows use this color

---

## Typography

### Font Family

- **Font Sans** - System sans-serif stack (`font-sans`)

### Font Weights

- **Black** (`font-black`) - Headings, buttons, emphasis
- **Bold** (`font-bold`) - Subheadings, labels, important text
- **Medium** (`font-medium`) - Body text, descriptions
- **Regular** - Default weight (rarely used)

### Type Scale

**Headings**
- `text-9xl` / `text-7xl` (md) - Hero brand name
- `text-7xl` / `text-5xl` (md) - Hero title
- `text-6xl` / `text-4xl` (md) - Section titles
- `text-5xl` / `text-4xl` (md) - Large section headings
- `text-3xl` - Form titles, card titles
- `text-2xl` - Card headings, step titles
- `text-xl` - Subheadings, large body text
- `text-lg` - Body text emphasis
- `text-sm` - Small text, metadata
- `text-xs` - Tags, timestamps

**Tracking**
- `tracking-tighter` - Hero brand name
- `tracking-tight` - Large headings
- `tracking-wider` - Uppercase labels
- `tracking-widest` - Button text, badges

**Line Height**
- `leading-tight` - Headings
- `leading-relaxed` - Body text, descriptions

---

## Shadows (Brutalist Style)

All shadows follow a consistent pattern: **offset shadows with no blur**, creating a hard-edged, dimensional effect.

### Shadow Pattern

```
shadow-[Xpx_Xpx_0px_0px_#1c1917]
```

### Shadow Sizes

- **Small** (`shadow-[2px_2px_0px_0px_#1c1917]`) - Tags, small elements
- **Medium** (`shadow-[4px_4px_0px_0px_#1c1917]`) - Icon containers, badges
- **Standard** (`shadow-[6px_6px_0px_0px_#1c1917]`) - Buttons, circular icons
- **Large** (`shadow-[8px_8px_0px_0px_#1c1917]`) - Cards
- **Extra Large** (`shadow-[12px_12px_0px_0px_#1c1917]`) - Forms, prominent containers

### Text Shadows

- `drop-shadow-[4px_4px_0px_rgba(28,25,23,1)]` - Hero brand name
- `drop-shadow-[6px_6px_0px_rgba(28,25,23,1)]` - Images, illustrations
- `drop-shadow-sm` - Subtle text shadow

---

## Borders

### Border Widths

- `border-2` - Standard borders (buttons, cards, inputs)
- `border-4` - Section dividers, prominent containers
- `border-b-2` - Card dividers, section separators
- `border-b-4` - Major section separators
- `border-t-2` - Card footers, subtle dividers

### Border Color

- `border-stone-900` - Primary border color (always use this)

### Border Styles

- `border-dashed` - Decorative lines (rarely used)
- `rounded-xl` - Buttons, inputs
- `rounded-2xl` - Icon containers
- `rounded-3xl` - Cards
- `rounded-full` - Badges, circular elements

---

## Spacing

### Section Padding

- `py-24` - Standard section vertical padding
- `px-6` - Standard horizontal padding
- `p-8` - Card padding
- `p-6` - Smaller card padding

### Container Widths

- `max-w-4xl` - Hero content
- `max-w-6xl` - Standard sections
- `max-w-3xl` - Forms, narrow content
- `max-w-2xl` - Text content

### Gaps

- `gap-3` - Small gaps (language switcher)
- `gap-6` - Standard gaps (buttons, links)
- `gap-8` - Card grids
- `gap-12` - Step grids

### Margins

- `mb-20` - Section title spacing
- `mb-16` - Large spacing
- `mb-12` - Standard spacing
- `mb-8` - Medium spacing
- `mb-6` - Small spacing
- `mb-4` - Tight spacing
- `mb-3` - Very tight spacing
- `mb-2` - Minimal spacing

---

## Layout Patterns

### Page Structure

```html
<div class="bg-amber-50 min-h-screen font-sans text-stone-900">
  <!-- Sections alternate between bg-white and bg-amber-50 -->
  <!-- Each section has border-b-4 border-stone-900 -->
</div>
```

### Section Pattern

```html
<section class="py-24 px-6 bg-white border-b-4 border-stone-900">
  <div class="max-w-6xl mx-auto">
    <!-- Content -->
  </div>
</section>
```

### Grid Patterns

- **3-column** (`grid md:grid-cols-3 gap-8` or `gap-12`) - Cards, steps
- **2-column** (`grid md:grid-cols-2 gap-8`) - Recipe cards (medium)
- **3-column responsive** (`grid md:grid-cols-2 lg:grid-cols-3 gap-8`) - Recipe gallery

---

## Components

### Buttons

**Primary Button**
```html
<a href="#" class="bg-orange-500 text-white font-black py-4 px-10 rounded-xl border-2 border-stone-900 shadow-[6px_6px_0px_0px_#1c1917] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[4px_4px_0px_0px_#1c1917] transition-all text-xl">
  Button Text
</a>
```

**Secondary Button**
```html
<a href="#" class="bg-white text-stone-900 font-black py-4 px-10 rounded-xl border-2 border-stone-900 shadow-[6px_6px_0px_0px_#1c1917] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[4px_4px_0px_0px_#1c1917] transition-all text-xl">
  Button Text
</a>
```

**Form Submit Button**
```html
<button type="submit" class="w-full bg-stone-900 hover:bg-stone-800 text-white font-black py-5 rounded-xl border-2 border-stone-900 shadow-[6px_6px_0px_0px_#a8a29e] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[4px_4px_0px_0px_#a8a29e] transition-all text-xl uppercase tracking-widest">
  Submit
</button>
```

### Cards

**Standard Card**
```html
<div class="p-8 rounded-3xl bg-white border-2 border-stone-900 shadow-[8px_8px_0px_0px_#1c1917] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[6px_6px_0px_0px_#1c1917] transition-all">
  <!-- Content -->
</div>
```

**Recipe Card**
```html
<article class="bg-white rounded-3xl border-2 border-stone-900 shadow-[8px_8px_0px_0px_#1c1917] overflow-hidden hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[6px_6px_0px_0px_#1c1917] transition-all cursor-pointer group">
  <div class="h-48 bg-slate-100 flex items-center justify-center p-6 border-b-2 border-stone-900">
    <!-- Image/Icon -->
  </div>
  <div class="p-8">
    <!-- Content -->
  </div>
</article>
```

### Form Inputs

**Text Input**
```html
<input type="text" class="w-full bg-stone-50 border-2 border-stone-900 rounded-xl px-4 py-4 text-stone-900 font-bold focus:ring-0 focus:shadow-[4px_4px_0px_0px_#1c1917] focus:translate-x-[-2px] focus:translate-y-[-2px] outline-none transition-all" placeholder="Placeholder">
```

**Textarea**
```html
<textarea class="w-full bg-stone-50 border-2 border-stone-900 rounded-xl px-4 py-4 text-stone-900 font-bold focus:ring-0 focus:shadow-[4px_4px_0px_0px_#1c1917] focus:translate-x-[-2px] focus:translate-y-[-2px] outline-none transition-all" rows="4"></textarea>
```

**Label**
```html
<label class="block text-sm font-black text-stone-900 uppercase tracking-wider mb-2">
  Label Text
</label>
```

### Tags/Badges

```html
<span class="px-3 py-1 bg-white border-2 border-stone-900 text-stone-900 text-xs font-bold rounded-lg shadow-[2px_2px_0px_0px_#1c1917]">
  #Tag
</span>
```

**Colored Tag**
```html
<span class="px-3 py-1 bg-purple-200 border-2 border-stone-900 text-stone-900 text-xs font-bold rounded-lg shadow-[2px_2px_0px_0px_#1c1917]">
  #Tag
</span>
```

### Icon Containers

**Circular Icon**
```html
<div class="w-32 h-32 mx-auto bg-amber-100 rounded-full flex items-center justify-center mb-8 border-4 border-stone-900 shadow-[6px_6px_0px_0px_#1c1917] overflow-hidden transition-transform transform group-hover:scale-110 group-hover:-rotate-3">
  <!-- Icon/Image -->
</div>
```

**Square Icon**
```html
<div class="w-16 h-16 bg-sky-200 rounded-2xl flex items-center justify-center mb-6 text-stone-900 border-2 border-stone-900 shadow-[4px_4px_0px_0px_#1c1917]">
  <!-- Icon -->
</div>
```

### Section Headings

**Standard Section Heading**
```html
<div class="text-center mb-20">
  <h2 class="text-4xl md:text-5xl font-black mb-6 text-stone-900">
    Section Title
  </h2>
  <p class="text-xl font-bold text-stone-600">
    Subtitle
  </p>
</div>
```

### Badges

```html
<div class="inline-block px-4 py-2 mb-8 text-sm font-black tracking-widest uppercase bg-white border-2 border-stone-900 shadow-[4px_4px_0px_0px_#1c1917] rounded-full transform rotate-2">
  Badge Text
</div>
```

---

## Interactive Elements

### Hover Effects

**Standard Hover (Buttons, Cards)**
- Translate: `hover:translate-x-[2px] hover:translate-y-[2px]`
- Shadow reduction: `hover:shadow-[6px_6px_0px_0px_#1c1917]` (from `8px`)
- Transition: `transition-all`

**Small Elements Hover**
- Translate: `hover:translate-x-[1px] hover:translate-y-[1px]`
- Shadow reduction: `hover:shadow-[2px_2px_0px_0px_#1c1917]` (from `3px`)

**Focus States (Inputs)**
- Translate: `focus:translate-x-[-2px] focus:translate-y-[-2px]`
- Shadow: `focus:shadow-[4px_4px_0px_0px_#1c1917]`
- Ring: `focus:ring-0` (removes default ring)

**Group Hover (Cards)**
- Scale: `group-hover:scale-110`
- Rotate: `group-hover:-rotate-3` or `group-hover:rotate-3`
- Color: `group-hover:text-orange-600`

### Transform Rotations

Use subtle rotations for playful, approachable feel:
- `transform -rotate-3` - Hero brand name
- `transform rotate-2` - Badges
- `transform rotate-1` / `-rotate-1` - Step titles, decorative elements
- `transform rotate-12` / `-rotate-12` - Decorative illustrations

---

## Background Patterns

### Dot Pattern
```html
<div class="absolute inset-0 opacity-10 bg-[radial-gradient(#1c1917_2px,transparent_2px)] [background-size:24px_24px] z-0"></div>
```

### Decorative Circles
```html
<div class="absolute top-0 right-0 w-64 h-64 bg-orange-300 rounded-full border-4 border-stone-900 -mr-32 -mt-32 opacity-50"></div>
```

---

## Selection Styling

```html
<div class="selection:bg-orange-300 selection:text-stone-900">
  <!-- Content -->
</div>
```

---

## Z-Index Scale

- `z-0` - Background patterns
- `z-10` - Content, illustrations
- `z-20` - Language switcher, overlays

---

## Responsive Breakpoints

Use Tailwind's default breakpoints:
- `md:` - 768px and up
- `lg:` - 1024px and up

**Common Patterns:**
- Hide on mobile: `hidden md:block`
- Stack to grid: `flex-col md:flex-row`
- Text scaling: `text-4xl md:text-5xl`

---

## Design Principles

### 1. Brutalist Aesthetic
- Heavy borders (`border-2`, `border-4`)
- Hard shadows (no blur)
- High contrast
- Bold typography

### 2. Playful Approachability
- Subtle rotations on elements
- Hover animations
- Friendly color palette
- Slight imperfections (rotations) show humanity

### 3. Clear Hierarchy
- Large, bold headings
- Consistent spacing
- Clear visual separation between sections
- Strong contrast between text and backgrounds

### 4. Accessibility
- High contrast ratios
- Readable font sizes
- Clear focus states
- Semantic HTML structure

### 5. Consistency
- Always use `stone-900` for borders and shadows
- Consistent shadow sizes for similar elements
- Standardized spacing scale
- Uniform hover effects

---

## Do's and Don'ts

### ✅ Do

- Use brutalist shadows (`shadow-[Xpx_Xpx_0px_0px_#1c1917]`)
- Apply subtle rotations for playfulness
- Maintain high contrast
- Use consistent spacing scale
- Alternate section backgrounds (`bg-white` / `bg-amber-50`)
- Add hover effects to interactive elements
- Use `font-black` for headings and buttons
- Include `border-b-4 border-stone-900` on sections

### ❌ Don't

- Use soft shadows or blur effects
- Over-rotate elements (keep it subtle: 1-3 degrees)
- Mix shadow colors (always use `#1c1917`)
- Use light borders (`border` without width)
- Forget hover states on interactive elements
- Use low contrast color combinations
- Mix different design systems

---

## Examples

### Hero Section Pattern
- Background: `bg-amber-100`
- Large rotated brand name
- Badge with rotation
- Two CTA buttons
- Decorative illustrations with rotation

### Content Section Pattern
- Background: `bg-white` or `bg-amber-50` (alternating)
- Section heading (centered)
- Grid of cards or content blocks
- Consistent spacing

### Form Section Pattern
- Background: `bg-amber-400` (accent color)
- Decorative circles
- White form container with large shadow
- Bold labels and inputs
- Dark submit button

---

## Notes

- This design system prioritizes **consistency** and **approachability**
- The brutalist aesthetic reflects our "no-nonsense" philosophy
- Playful elements (rotations, animations) make it welcoming
- All measurements use Tailwind's spacing scale
- Colors come from Tailwind's default palette (stone, amber, orange)

---

*Last updated: Based on homepage implementation and community philosophy*


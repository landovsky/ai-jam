# Front-End Development Guide

## Slim Template Syntax Rules

### Critical: CSS Classes with Bracket Notation

**Problem:** Slim's dot notation fails when CSS classes contain bracket syntax `[...]` (e.g., Tailwind's arbitrary values). The classes leak into the rendered HTML as literal text.

**Root Cause:** Slim's parser interprets brackets in dot notation as special characters rather than part of the class name.

**Example of BROKEN code:**
```slim
/ This renders CSS code into HTML:
.bg-white.shadow-[12px_12px_0px_0px_#1c1917]
  p Hello
```

**Renders as:**
```html
<div class="bg-white shadow-">[12px_12px_0px_0px_#1c1917]
  <p>Hello</p>
</div>
```

**Solution:** Use explicit `class=` attribute syntax for ANY element containing bracket notation:
```slim
/ This renders correctly:
div class="bg-white shadow-[12px_12px_0px_0px_#1c1917]"
  p Hello
```

**Renders as:**
```html
<div class="bg-white shadow-[12px_12px_0px_0px_#1c1917]">
  <p>Hello</p>
</div>
```

### When to Use Each Syntax

| Scenario | Syntax | Example |
|----------|--------|---------|
| **Simple classes** (no brackets) | Dot notation | `.bg-white.p-4.rounded` |
| **Classes with `[...]`** | `class=` attribute | `div class="shadow-[6px_6px_0px_0px_#1c1917]"` |
| **Mixed (some with brackets)** | `class=` attribute for entire element | `div class="bg-white shadow-[6px_6px_0px_0px_#1c1917] p-4"` |

### Common Bracket Notation Patterns in This Project

These patterns ALWAYS require `class=` syntax:

- **Shadow:** `shadow-[6px_6px_0px_0px_#1c1917]`
- **Translation:** `hover:translate-x-[2px]`, `hover:translate-y-[2px]`
- **Focus shadow:** `focus:shadow-[4px_4px_0px_0px_#1c1917]`
- **Focus translation:** `focus:translate-x-[-2px]`, `focus:translate-y-[-2px]`

### Validation Checklist

Before committing Slim templates:

1. Search for `shadow-\[` in your changes
2. Search for `translate-\[` in your changes
3. Search for any `\[.*\]` pattern in dot notation lines
4. If found, convert entire line to `class=` syntax

### Detection Pattern

Use this grep to find potential issues:
```bash
grep -n '^\s*\.' app/views/**/*.slim | grep '\['
```

Any matches should be reviewed and likely converted to `class=` syntax.

### Historical Context

This issue has occurred 3 times in the project history:

1. **2026-02-01 (commit 732c775):** Fixed in `jam_sessions/show.html.slim`
2. **2026-02-01 (commit 8df893d):** Fixed in `jam_sessions/index.html.slim`
3. **2026-02-01 (commit f0fde8a + fix):** Introduced in `_past_event_engagement.html.slim` and other partials

## Style Guide Reference

See `docs/style-guide.md` for:
- Design system and component patterns
- Brutalist visual language
- Shadow and animation standards

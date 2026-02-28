# AI Jam — Project Brief

## What is this?

AI Jam is a web platform for a fortnightly community meetup focused on practical AI experimentation. Members attend jam sessions, work on real problems together, and publish their findings as "Recipes" — documented, reproducible AI workflows that others can learn from.

The community philosophy: **the price of admission is effort, not expertise.** Everyone contributes something — even a failed experiment counts. See the [Community README](AI%20Jam%20Community%20README.md) for the full manifesto.

## What the app does today

Three epics have been completed:

### Epic 1 — Public Presence & Discovery
A public-facing recipe library where anyone can browse documented AI experiments. Recipes have titles, markdown content, tags, and emoji icons. Search and tag filtering are supported. Only admins and topic managers can publish; members see their own drafts.

### Epic 2 — Onboarding & Contextual Privacy
A three-step onboarding flow (interests → account → bio) with session-based authentication. User profiles are private by default — your bio and interests only become visible to people who attend the same event as you. This "event unlock" model prevents passive lurking and encourages real participation.

### Epic 3 — Event Engagement & Capacity
Jam sessions have optional capacity limits. When an event fills up, new RSVPs go to a waitlist. When someone cancels, the next person on the waitlist is automatically promoted and notified by email. Database-level locking prevents race conditions.

### Supporting infrastructure
- Bilingual (English + Czech) with locale-scoped routes
- Brutalist design system (heavy borders, bold shadows, playful typography)
- Background jobs via Solid Queue (waitlist promotion)
- Push-to-deploy via Kamal
- CI pipeline: Brakeman, RuboCop, RSpec, Capybara system tests

## Roadmap — what's next

### Epic 4 — Collaborative Programming ("The Jam")
Crowdsource the event agenda. Members suggest topics and volunteer to manage them. A weighted voting system (3 votes per user per event) lets the community decide what gets covered. See [epic4 spec](epics/epic4-collaborative-programming.md).

### Epic 5 — AI-Powered Insights
Use LLMs to "unfold" proposed topics — generate a cached preview of what a discussion might cover, helping members vote more informedly. See [epic5 spec](epics/epic5-ai-powered-insights.md).

### Epic 6 — Administrative Oversight
Admin tools for quality control: refresh AI-generated content, manually assign topic managers, promote proposals to the official agenda. See [epic6 spec](epics/epic6-administrative-oversight.md).

## Architecture notes for new contributors

**Authentication** is hand-rolled with `has_secure_password` (bcrypt) and `session[:user_id]`. No Devise.

**Authorization** is role-based: `User#role` is an enum (member, topic_manager, admin) with permission methods like `can_edit_recipe?` and `can_publish_recipe?`.

**Concerns** encapsulate cross-cutting logic:
- `ProfileVisibility` — determines if one user can see another's profile based on shared event attendance
- `WaitlistManagement` — handles capacity checks, waitlist positioning, and FIFO promotion with database locking

**Decorators** (Draper) separate presentation logic from models.

**Active Interaction** is available for service objects but not heavily used yet.

**Database** is SQLite in all environments. Production uses separate SQLite databases for cache, queue, and cable (Rails 8 solid adapters).

**Frontend** uses Slim templates, Stimulus controllers for interactivity, and Turbo for navigation. CSS is Tailwind 4, bundled with the Tailwind CLI. JS is bundled with esbuild. The [style guide](style-guide.md) documents the full design system.

## Feature branches

These branches exist from completed work. All have been merged to main:

| Branch | Epic | Status |
|--------|------|--------|
| `feat/three-step-onboarding` | Epic 2 (partial) | Merged |
| `feature/ai-jam-pmd-public-presence-discovery` | Epic 1 | Merged |
| `feature/ai-jam-f52-contextual-privacy` | Epic 2 | Merged |
| `feature/ai-jam-oks-capacity-waitlist` | Epic 3 | Merged (1 stale housekeeping commit remains) |

These branches can be safely deleted — all feature code is on main.

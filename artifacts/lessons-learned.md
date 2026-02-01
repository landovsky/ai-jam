# Lessons Learned

This document captures insights from past implementations to improve future work.

---

## 2026-02-01 - ai-jam-pmd - Epic 1: Public Presence & Discovery

### What worked well
- Brutalist design system in `docs/style-guide.md` provided clear, actionable guidance for consistent UI
- Using YAML serialization for tags (`serialize :tags, type: Array`) simplifies storage
- Scoped routes with locale (`scope "(:locale)"`) works well with `default_url_options`
- Role-based authorization in User model (`can_edit_recipe?`, `can_publish_recipe?`) keeps logic centralized

### What to avoid
- **SQL Injection in LIKE queries**: Using string interpolation in LIKE clauses is vulnerable.
  ```ruby
  # Bad - vulnerable to SQL injection
  where("title LIKE ?", "%#{params[:q]}%")

  # Good - sanitize special characters
  where("title LIKE ?", "%#{Model.sanitize_sql_like(params[:q])}%")
  ```
  Add to code review checklist: always check LIKE queries for proper sanitization.

- **Turbo and System Tests**: Rails 7 Turbo can cause flaky system tests due to timing issues with form submissions.
  - Add `data: { turbo: false }` to forms that need reliable testing
  - Or wait longer for Turbo navigation to complete
  - Consider using `Capybara.reset_sessions!` between tests

- **Case sensitivity in test assertions**: UI text transformed by CSS (uppercase) still needs case-insensitive matching in tests.
  ```ruby
  # Bad - fails if CSS transforms text to uppercase
  expect(page).to have_content('Draft')

  # Good - case-insensitive
  expect(page).to have_content(/draft/i)
  ```

### Process improvements
- When implementing search/filter functionality, always sanitize user input even for LIKE queries
- System tests for authenticated flows should verify sign-in succeeded before proceeding
- Plan should include warning: "If using Turbo, consider disabling for forms tested via Capybara"
- Test spec should specify expected button/label text to avoid mismatches with implementation

### Artifacts verified
- `docs/style-guide.md` followed for all views (brutalist shadows, borders, colors)
- I18n complete for both EN and CS locales

---

## 2026-02-01 - ai-jam-f52 - Epic 2: Intelligent Onboarding & Privacy

### What worked well

- **ProfileVisibility concern pattern** in `/Users/tomas/git/projects/ai-jam/app/models/concerns/profile_visibility.rb` cleanly encapsulates privacy logic using EXISTS subqueries instead of loading associations into memory. This pattern should be reused for any relationship-based access control.

- **Eager loading in JamSessionsController#show** properly uses `.includes(:attendances, :jam_sessions)` on attendees to preload visibility-check associations, avoiding N+1 queries when rendering the user cards.

- **Authorization through scoping** in AttendancesController#destroy uses `current_user.attendances.find(params[:id])` which automatically restricts access to own records without explicit authorization checks.

- **Test coverage** is comprehensive with 61 specs covering unit (models), request (controllers), and system (end-to-end) tests including edge cases like RSVP cancellation affecting visibility.

### What to avoid

- **Missing database-level unique constraints** - The Attendance model had a uniqueness validation at the Rails level (`validates :user_id, uniqueness: { scope: :jam_session_id }`) but no corresponding database index. This was caught in review and fixed with migration `20260201052922_add_unique_index_to_attendances.rb`. **Always add unique indexes for any uniqueness validation to prevent race condition duplicates.**

- **N+1 queries in loops with .count** - The original jam_sessions/index view called `session.users.count` in a loop, generating a COUNT query per session. Fixed by using `left_joins(:attendances).select('jam_sessions.*, COUNT(attendances.id) AS attendees_count').group('jam_sessions.id')` in the controller. **When displaying counts in lists, always precompute with GROUP BY or use counter_cache.**

- **Duplicate JSON.parse calls** - The `_user_card.html.slim` partial parses `user.interests` multiple times (lines 26, 29, 31). While minor, this could be optimized by parsing once into a local variable. **When working with JSON columns, parse once and reuse.**

### Process improvements

- **Planner should include "Add database index for uniqueness validations" as a checklist item** when specifying any model with uniqueness constraints.

- **Planner should explicitly warn about N+1 queries in index pages** where associations are accessed in loops. The warning about N+1 was present but specifically for visibility checks, not for count displays.

- **Implementer should consider adding counter_cache** for associations that are frequently counted. The `attendees_count` is displayed on every jam session card; a counter_cache column would eliminate the COUNT query entirely.

### Artifacts referenced

- `/Users/tomas/git/projects/ai-jam/docs/style-guide.md` - All views correctly follow the brutalist design system (border-4 border-stone-900, rounded-3xl, shadow patterns)
- I18n complete in both `/Users/tomas/git/projects/ai-jam/config/locales/en.yml` and `/Users/tomas/git/projects/ai-jam/config/locales/cs.yml`

---

## 2026-02-01 - ai-jam-oks - Epic 3: Event Engagement & Capacity

### What worked well

- **Database locking pattern for race conditions** in `/Users/tomas/git/projects/ai-jam/app/controllers/attendances_controller.rb` lines 8-9 uses `JamSession.transaction { jam_session.lock! }` to serialize concurrent RSVPs. This prevents exceeding capacity when multiple users RSVP simultaneously. Use this pattern for any resource with limited availability.

- **Enum with string storage and prefix** in `/Users/tomas/git/projects/ai-jam/app/models/attendance.rb` line 6: `enum :status, { attending: 'attending', ... }, prefix: true, validate: true` stores human-readable values, avoids magic numbers, and generates scoped predicates (`status_attending?`). Follow this pattern for all Rails 8+ enums.

- **Conditional COUNT for status-aware aggregation** in `/Users/tomas/git/projects/ai-jam/app/controllers/jam_sessions_controller.rb` line 7: `COUNT(CASE WHEN attendances.status = 'attending' THEN 1 END)` counts only specific statuses without N+1 queries. Use this when counting subsets of associations.

- **WaitlistManagement concern** in `/Users/tomas/git/projects/ai-jam/app/models/concerns/waitlist_management.rb` cleanly encapsulates promotion logic with atomic transactions and locking (`attendances.waitlisted.lock.first`). Extracting domain logic to concerns keeps models focused.

- **Validation conditioned on status** in Attendance model: `validates :waitlist_position, presence: true, if: :status_waitlisted?` and `absence: true, unless: :status_waitlisted?` ensures data integrity for state-dependent fields.

### What to avoid

- **Individual updates in loops for waitlist reordering** - The `reorder_waitlist_after_position` method in WaitlistManagement concern uses `find_each` with individual updates. For high-traffic events, consider `update_all('waitlist_position = waitlist_position - 1')` with a WHERE clause for bulk updates. Low priority since waitlists are typically small.

- **Testing concurrent access in request specs** - The implementation handles race conditions, but the tests don't explicitly test concurrent scenarios (e.g., using threads or parallel requests). Consider adding integration tests that simulate concurrent RSVPs to the last spot.

### Process improvements

- **Planner should include "Add database locking" as a checklist item** when specifying any resource with limited availability (tickets, seats, inventory). The pattern `Model.transaction { instance.lock! }` should be standard for capacity-constrained resources.

- **When adding enums with status tracking, always consider:**
  1. What fields are required for each status (conditional validations)
  2. What counts/queries need to be scoped by status
  3. What visibility/privacy changes when status changes

### Artifacts referenced

- `/Users/tomas/git/projects/ai-jam/docs/style-guide.md` - All new views (capacity indicators, waitlist UI) follow brutalist design system
- I18n complete with proper Czech pluralization (one/few/other) in both locale files

---

## 2026-02-01 - ai-jam-4z5 - Past Event Engagement Feature

### What worked well

- **Instance method mirroring scope logic** in `/Users/tomas/git/projects/ai-jam/app/models/jam_session.rb`: The `past?` instance method (`held_on < Date.today`) exactly mirrors the `past` scope's WHERE clause. This ensures consistent behavior between querying past events and checking individual events. Always keep instance predicates aligned with scope conditions.

- **Early return for validation in controller** in `/Users/tomas/git/projects/ai-jam/app/controllers/attendances_controller.rb` lines 7-12: The past event validation happens BEFORE the transaction block with an explicit `return` after redirect. This prevents unnecessary database locking when the request will be rejected anyway.

- **Conditional instance variable loading** in `/Users/tomas/git/projects/ai-jam/app/controllers/jam_sessions_controller.rb` lines 27-31: Only loading `@published_recipes` and checking `@has_upcoming_events` when `@jam_session.past?` avoids unnecessary database queries for upcoming events. Pattern: load data lazily based on view requirements.

- **Reusing existing partial patterns**: The engagement card in `_past_event_engagement.html.slim` follows the exact structure and styling from `_locked_profile_message.html.slim`, ensuring visual consistency. When the plan references a pattern file, actually read and follow it.

### What to avoid

- **Relying on nil-safe short-circuit evaluation** - The view uses `@jam_session.past? && @published_recipes.any?` which works only because Ruby short-circuits. If someone refactors to check `.any?` first, it would raise NoMethodError when `@published_recipes` is nil (for non-past events). More defensive: initialize to empty collection or use explicit `if @jam_session.past?` wrapper.

### Process improvements

- **Plan should flag security validation gaps explicitly** - The plan correctly identified the backend security hole where RSVP could be POSTed to past events. Future specs should include a "Security Considerations" section that flags controller actions missing input validation for business rule constraints.

- **When spec says "engagement card" similar to existing pattern** - Planner should include the exact file path of the pattern to copy. This implementation correctly referenced `/Users/tomas/git/projects/ai-jam/app/views/shared/_locked_profile_message.html.slim`. Reviewers should verify the pattern was actually followed.

### Artifacts referenced

- `/Users/tomas/git/projects/ai-jam/docs/style-guide.md` - Engagement card follows brutalist design (p-12, rounded-3xl, border-4, shadow patterns)
- I18n complete in both locales with translations for event_ended, recipes_from_event, and attendances.event_ended

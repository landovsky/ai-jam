# Lessons Learned

This document captures insights from past implementations to improve future work.

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

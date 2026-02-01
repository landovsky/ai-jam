# Context: Past Event Engagement Instead of RSVP

## Request summary
When a user lands on a past event page (likely from organic search), instead of allowing RSVP (which is meaningless for past events), engage them to browse other events. The goal is to retain organic traffic rather than showing a dead-end.

## Relevant code areas

### Event Model and Past Detection
- `/app/models/jam_session.rb` - Defines scopes for `upcoming` (held_on >= Date.today) and `past` (held_on < Date.today). There is NO instance method `past?` - this needs to be added or the check done inline in views/controllers.

### RSVP Flow
- `/app/controllers/attendances_controller.rb` - Handles RSVP creation (lines 4-46). Currently has NO validation that the event is not in the past.
- `/app/views/jam_sessions/show.html.slim` - Contains RSVP section (lines 16-55) with:
  - Capacity display for events with capacity limit
  - Different buttons based on login state and attendance status
  - NO check for past events - buttons always show

### Event Display
- `/app/views/jam_sessions/index.html.slim` - Lists both upcoming (lines 11-48) and past (lines 58-83) events. Past events already have subdued styling (stone-100 bg vs amber-100, smaller size).
- `/app/controllers/jam_sessions_controller.rb` - Loads @upcoming_sessions and @past_sessions separately.

### Existing Engagement Pattern
- `/app/views/shared/_locked_profile_message.html.slim` - Excellent reference pattern for engaging users toward events. Shows:
  - Contextual explanation
  - "How to unlock" numbered steps
  - CTA button "Browse Events" linking to jam_sessions_path
  - Uses consistent brutalist styling (p-12, rounded-3xl, border-4, shadow-[12px_12px_0px_0px_#1c1917])

### i18n
- `/config/locales/en.yml` - Contains jam_sessions translations. New keys will be needed for past event messaging.

## Existing patterns to follow

1. **Brutalist card styling** (from style-guide.md):
   - Large shadow cards for important messaging: `shadow-[12px_12px_0px_0px_#1c1917]`
   - Background amber-50 for sections, white for cards
   - Border: `border-4 border-stone-900 rounded-3xl`

2. **CTA button pattern** (from locked_profile_message):
   - Primary: `bg-orange-500 text-white font-black py-4 px-10 rounded-xl border-2 border-stone-900 shadow-[6px_6px_0px_0px_#1c1917] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[4px_4px_0px_0px_#1c1917] transition-all text-xl uppercase tracking-widest`

3. **Engagement flow** (from locked profile pattern):
   - Icon/visual indicator
   - Headline explaining situation
   - Brief explanation of context
   - Clear next action with CTA

## Technical constraints

1. **No `past?` instance method exists** - Need to add `def past?; held_on < Date.today; end` to JamSession model
2. **Backend validation missing** - AttendancesController doesn't prevent RSVP to past events (security/data integrity issue)
3. **i18n required** - Must add translations in both en.yml and cs.yml

## Edge cases to address

1. **Event is today but time has passed** - Currently only checking date, not time. Simplest: treat "today" as upcoming until end of day.
2. **No upcoming events exist** - Need fallback when there are no events to suggest (link to recipes or homepage instead?)
3. **User is already attending a past event** - Unlikely edge case but view should handle gracefully (show archive-style attendance confirmation, not cancel button)
4. **Direct POST to RSVP endpoint for past event** - Backend must return error/redirect

## Risks

1. **SEO consideration** - Past event pages may have valuable search traffic. Changing content significantly could affect rankings. Should preserve event details while changing CTA area.
2. **Related recipes** - Past events may have associated recipes. Could be a valuable engagement point to show "Recipes from this event" if any exist.

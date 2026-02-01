# Spec: Past Event Engagement Instead of RSVP

## Summary
When users land on a past event page (often from organic search), replace the RSVP section with an engagement card that acknowledges the event has ended, shows any recipes created at that event, and guides users to browse upcoming events or return to the homepage if none exist.

## Requirements
- [ ] Add `past?` instance method to JamSession model that returns true when `held_on < Date.today`
- [ ] Modify `jam_sessions/show.html.slim` to detect past events and render engagement content instead of RSVP buttons
- [ ] Create engagement card with:
  - Visual indicator (e.g., calendar icon or clock)
  - Headline: "This Event Has Ended"
  - Engaging message: "Missed this one? We jam every two weeks - join us next time!"
  - Primary CTA button: "Browse Upcoming Events" (links to jam_sessions_path)
- [ ] Show "Recipes from This Event" section on past event pages if event has associated published recipes
- [ ] Handle no upcoming events scenario: show "Check back soon" message with link to homepage instead of events index
- [ ] Add backend validation in AttendancesController to reject RSVP attempts for past events (return error flash + redirect)
- [ ] Add i18n translations for all new strings in both en.yml and cs.yml

## Edge cases
- [ ] Event is today - treat as "upcoming" (RSVP allowed) until end of day. Only events with held_on < Date.today are past.
- [ ] User already has attendance record for past event - show confirmation they attended (different from "event ended" message for non-attendees). Display as read-only "You attended this event" badge.
- [ ] Direct POST to RSVP endpoint for past event - controller must return flash error "This event has already ended" and redirect to event show page
- [ ] Past event with no recipes - show only the engagement card, omit recipes section entirely
- [ ] Past event with unpublished recipes - only show published recipes (use existing Recipe.published scope)

## Acceptance criteria
- [ ] Visiting a past event page shows event details (title, date, location, content, attendees) but no RSVP/waitlist buttons
- [ ] Past event page displays engagement card in place of RSVP section following brutalist style guide
- [ ] If past event has published recipes, they appear in a "Recipes from This Event" section
- [ ] "Browse Upcoming Events" button links to jam_sessions_path when upcoming events exist
- [ ] When no upcoming events exist, CTA changes to "Back to Homepage" linking to root_path
- [ ] Submitting RSVP form directly to past event endpoint returns error and does not create attendance record
- [ ] All user-facing text has both English and Czech translations
- [ ] Current attendees of past events see "You attended this event" badge instead of generic "event ended" message

## Out of scope
- Time-based past detection (checking event time, not just date)
- Admin ability to manually close RSVP before event date
- Email notifications about past event recipes
- Archive/historical browsing features beyond what exists

## Technical notes

### Files to modify
- `app/models/jam_session.rb` - add `past?` method
- `app/views/jam_sessions/show.html.slim` - conditional rendering for past events
- `app/controllers/attendances_controller.rb` - add past event validation in create action
- `app/controllers/jam_sessions_controller.rb` - load recipes for past events
- `config/locales/en.yml` - new translations under jam_sessions.show
- `config/locales/cs.yml` - Czech translations

### New partial suggested
- `app/views/jam_sessions/_past_event_engagement.html.slim` - engagement card for past events

### Styling reference
Follow patterns from `/app/views/shared/_locked_profile_message.html.slim`:
- Card: `p-12 rounded-3xl bg-white border-4 border-stone-900 shadow-[12px_12px_0px_0px_#1c1917]`
- CTA button: `bg-orange-500 text-white font-black py-4 px-10 rounded-xl border-2 border-stone-900 shadow-[6px_6px_0px_0px_#1c1917] hover:translate-x-[2px] hover:translate-y-[2px] hover:shadow-[4px_4px_0px_0px_#1c1917] transition-all text-xl uppercase tracking-widest`

### Proposed i18n keys
```yaml
jam_sessions:
  show:
    event_ended:
      title: "This Event Has Ended"
      message: "Missed this one? We jam every two weeks - join us next time!"
      browse_events: "Browse Upcoming Events"
      back_home: "Back to Homepage"
      you_attended: "You attended this event"
    recipes_from_event: "Recipes from This Event"
```

## Artifacts consulted
- `docs/style-guide.md` - used: extracted brutalist card and button patterns for engagement card styling
- `docs/AI Jam Community README.md` - used: informed messaging tone ("fortnightly meetup", emphasis on participation)

## Artifacts to update
- None required

## Open risks
- SEO: Changing the CTA area content on past event pages. Mitigated by preserving all event content and only modifying the action section.

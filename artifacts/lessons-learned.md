# Lessons Learned

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

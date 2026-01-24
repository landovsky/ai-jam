---
trigger: always_on
---

---
trigger: always_on
---

# Project Context
This is a Rails 8.1 application using SQLite3, TailwindCSS v4, and Hotwire (Turbo + Stimulus).

# Critical Rules

## Visual Design & UI
*   follow `docs/style-guide.md` for ALL tasks involving visual changes, creating new pages, or modifying components.
*   **TailwindCSS:** Use TailwindCSS v4 utility classes. Do NOT create custom CSS classes unless absolutely necessary and authorized.
*   **Views:** Use Slim for templates (`.html.slim`), as `slim-rails` is installed.

## Backend Development
*   **Business Logic:** Use `ActiveInteraction` service objects for business logic. Keep controllers skinny.
*   **Forms:** Use Form Objects (using `ActiveModel::Model` or `ActiveInteraction`) for complex form submissions that touch multiple models.
*   **Code Style:** Follow standard Ruby guidelines and modern Rails patterns.

## Frontend Development
*   **Interactivity:** Use Stimulus controllers for JavaScript behavior. Avoid inline JS.
*   **Updates:** Use Turbo Streams and Turbo Frames for partial page updates.
*   **Assets:** Assets are managed via the standard Rails 8 asset pipeline.

## Testing
*   **Framework:** RSpec.
*   **Factories:** Use FactoryBot.
*   **Type:** Prefer System tests (`driven_by(:selenium, using: :headless_chrome)`) for verifying UI flows and JavaScript interactions.
*   **Philosophy:** Test behavior, not implementation details.

## General
*   **Conciseness:** Be concise in your explanations.
*   **Files:** When editing, favor showing the diff or the specific block if the file is large, unless creating a new file.

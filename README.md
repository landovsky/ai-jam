# AI Jam

A community platform for AI experimentation and knowledge sharing. Members attend fortnightly jam sessions, collaborate on real-world AI problems, and document their findings as reproducible "Recipes."

Built with Rails 8.1, SQLite, Hotwire (Turbo + Stimulus), and Tailwind CSS.

## Getting Started

### With Docker (recommended)

```bash
git clone git@github.com:landovsky/ai-jam.git
cd ai-jam
cp .env.example .env
# Edit .env — set RAILS_MASTER_KEY (ask a team member) and ANTHROPIC_API_KEY
docker compose up --build
```

First run will install dependencies, build the image, and start the app. Then in another terminal:

```bash
docker compose exec web bin/rails db:prepare   # create and migrate database
docker compose exec web bin/rails db:seed      # load demo data
```

Visit http://localhost:3210

### Without Docker (macOS / Linux)

Prerequisites: Ruby 3.4.7, Node 22.21.0, Yarn 1.22.22

```bash
bin/setup
```

This installs dependencies, prepares the database, and starts the dev server at http://localhost:3210.

### Demo Accounts (after seeding)

| Role          | Email                 | Password      |
|---------------|-----------------------|---------------|
| Admin         | admin@aijam.test      | password123   |
| Topic Manager | manager@aijam.test    | password123   |
| Member        | member@aijam.test     | password123   |

## Tech Stack

| Layer          | Technology                                      |
|----------------|-------------------------------------------------|
| Framework      | Rails 8.1                                       |
| Language       | Ruby 3.4.7                                      |
| Database       | SQLite 3                                        |
| Background Jobs| Solid Queue (runs in Puma process)               |
| Views          | Slim templates                                  |
| CSS            | Tailwind CSS 4, bundled via cssbundling-rails    |
| JavaScript     | Stimulus + Turbo, bundled via esbuild            |
| Auth           | bcrypt (`has_secure_password`), session-based    |
| I18n           | English + Czech, locale-scoped routes            |
| Deployment     | Kamal (Docker-based, push to deploy)             |
| Error Tracking | Sentry                                          |

## Development

### Running processes

`bin/dev` starts three processes via foreman:

- **web** — Rails server on port 3210
- **js** — esbuild watch (app/javascript -> app/assets/builds)
- **css** — Tailwind CSS watch

### Docker commands

```bash
docker compose up                    # start
docker compose down                  # stop
docker compose exec web bin/rails c  # rails console
docker compose exec web bin/rails db:migrate
```

### Running tests

```bash
bin/rspec                    # all tests
bin/rspec spec/models        # unit tests
bin/rspec spec/system        # browser tests (Capybara + Selenium)
```

### Code quality

```bash
bin/rubocop                  # linting
bin/brakeman --no-pager      # security scan
bin/bundler-audit             # dependency vulnerabilities
```

## Project Structure

```
app/
├── controllers/     # 8 controllers (pages, recipes, jam_sessions, attendances, ...)
├── models/
│   ├── concerns/    # ProfileVisibility, WaitlistManagement
│   └── ...          # User, JamSession, Recipe, Attendance, Author
├── views/           # Slim templates
├── decorators/      # Draper (SessionDecorator, OnboardingDecorator)
├── jobs/            # WaitlistPromotionJob
├── mailers/         # WaitlistMailer
└── helpers/         # Markdown rendering, onboarding helpers
docs/
├── style-guide.md   # Brutalist design system (colors, typography, components)
└── epics/           # Feature specifications and roadmap
```

## Deployment

Push-to-deploy via Kamal. Production runs on a single server with SQLite and persistent storage volume.

```bash
bin/kamal deploy
bin/kamal app logs
bin/kamal console
```

## Further Reading

- [Project Brief & Roadmap](docs/PROJECT_BRIEF.md) — vision, completed work, and what's next
- [Style Guide](docs/style-guide.md) — design system and component patterns
- [Epic Specifications](docs/epics/) — detailed feature specs
- [Community README](docs/AI%20Jam%20Community%20README.md) — the philosophy behind AI Jam

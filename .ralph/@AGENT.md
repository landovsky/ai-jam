# Agent Build Instructions

## Tech Stack Overview

**Backend:**
- Ruby (see `.ruby-version`)
- Rails 8.1
- SQLite3 database
- Puma web server with Thruster
- Solid Queue for background jobs

**Frontend:**
- Hotwire (Turbo + Stimulus)
- Tailwind CSS v4
- Slim templates
- ESBuild for JavaScript bundling
- Sprockets asset pipeline

**Key Gems:**
- `active_interaction` - Service objects
- `draper` - Decorators
- `jsonapi-serializer` - JSON API serialization
- `ruby-openai` - OpenAI integration
- `sentry-rails` - Error tracking

## Rails project best practices
- follow well known Rails practices and conventions
- maintain lean models and controllers
- **Service Objects**: Use ActiveInteraction for all business operations
- **Component-Based UI**: ViewComponents for all views, no traditional view templates
- **Progressive Enhancement**: Stimulus for JavaScript behavior, Turbo for navigation

## Project Setup

```bash
# Install Ruby dependencies
bundle install

# Install JavaScript dependencies
npm install

# Setup database
bin/rails db:setup

# Or reset database (drops, creates, migrates, seeds)
bin/rails db:reset
```

## Running the Application

```bash
# Start development server (Rails + asset watchers)
bin/dev

# Or start Rails server only
bin/rails server
```

## Running Tests

```bash
# Run all RSpec tests
bundle exec rspec

# Run specific test file
bundle exec rspec spec/models/recipe_spec.rb

# Run tests with coverage
COVERAGE=true bundle exec rspec

# Run system tests (Capybara + Selenium)
bundle exec rspec spec/system/
```

## Build Commands

```bash
# Build JavaScript assets
npm run build

# Build CSS (Tailwind)
npm run build:css

# Precompile all assets for production
bin/rails assets:precompile
```

## Code Quality

```bash
# Run RuboCop linter
bin/rubocop

# Auto-fix RuboCop offenses
bin/rubocop -A

# Run Brakeman security scanner
bin/brakeman

# Run bundler-audit for gem vulnerabilities
bin/bundler-audit
```

## Database Commands

```bash
# Run migrations
bin/rails db:migrate

# Rollback last migration
bin/rails db:rollback

# Check migration status
bin/rails db:migrate:status

# Rails console
bin/rails console
```

## Background Jobs

```bash
# Start Solid Queue worker
bin/jobs

# Or via Rails
bin/rails solid_queue:start
```

## Release Management

```bash
# Dry run release
npm run release:dry

# Patch release (0.0.x)
npm run release:patch

# Minor release (0.x.0)
npm run release:minor

# Major release (x.0.0)
npm run release:major
```

## Deployment

```bash
# Deploy with Kamal
bin/kamal deploy

# Check deployment status
bin/kamal details
```

## Key Learnings
- Update this section when you learn new build optimizations
- Document any gotchas or special setup requirements
- Keep track of the fastest test/build cycle

## Feature Development Quality Standards

**CRITICAL**: All new features MUST meet the following mandatory requirements before being considered complete.

### Testing Requirements

- **Minimum Coverage**: 85% code coverage ratio required for all new code
- **Test Pass Rate**: 100% - all tests must pass, no exceptions
- **Test Types Required**:
  - Unit tests for models and services (`spec/models/`, `spec/services/`)
  - Request specs for API endpoints (`spec/requests/`)
  - System tests for critical user workflows (`spec/system/`)
- **Coverage Validation**: Run coverage reports before marking features complete:
  ```bash
  COVERAGE=true bundle exec rspec
  ```
- **Test Quality**: Tests must validate behavior, not just achieve coverage metrics
- **Test Documentation**: Complex test scenarios must include comments explaining the test strategy

### Testing Tools

- **RSpec** - Test framework
- **Factory Bot** - Test data factories (`spec/factories/`)
- **FFaker** - Fake data generation
- **Shoulda Matchers** - One-liner model tests
- **Capybara** - System test DSL
- **Selenium WebDriver** - Browser automation
- **Database Cleaner** - Test isolation

### Git Workflow Requirements

Before moving to the next feature, ALL changes must be:

1. **Committed with Clear Messages**:
   ```bash
   git add .
   git commit -m "feat(module): descriptive message following conventional commits"
   ```
   - Use conventional commit format: `feat:`, `fix:`, `docs:`, `test:`, `refactor:`, etc.
   - Include scope when applicable: `feat(api):`, `fix(ui):`, `test(auth):`
   - Write descriptive messages that explain WHAT changed and WHY

2. **Pushed to Remote Repository**:
   ```bash
   git push origin <branch-name>
   ```
   - Never leave completed features uncommitted
   - Push regularly to maintain backup and enable collaboration
   - Ensure CI/CD pipelines pass before considering feature complete

3. **Branch Hygiene**:
   - Work on feature branches, never directly on `main`
   - Branch naming convention: `feature/<feature-name>`, `fix/<issue-name>`, `docs/<doc-update>`
   - Create pull requests for all significant changes

4. **Ralph Integration**:
   - Update .ralph/@fix_plan.md with new tasks before starting work
   - Mark items complete in .ralph/@fix_plan.md upon completion
   - Update .ralph/PROMPT.md if development patterns change
   - Test features work within Ralph's autonomous loop

### Documentation Requirements

**ALL implementation documentation MUST remain synchronized with the codebase**:

1. **Code Documentation**:
   - YARD documentation for public methods
   - Update inline comments when implementation changes
   - Remove outdated comments immediately

2. **Implementation Documentation**:
   - Update relevant sections in this AGENT.md file
   - Keep build and test commands current
   - Update configuration examples when defaults change
   - Document breaking changes prominently

3. **README Updates**:
   - Keep feature lists current
   - Update setup instructions when dependencies change
   - Maintain accurate command examples
   - Update version compatibility information

4. **AGENT.md Maintenance**:
   - Add new build patterns to relevant sections
   - Update "Key Learnings" with new insights
   - Keep command examples accurate and tested
   - Document new testing patterns or quality gates

### Feature Completion Checklist

Before marking ANY feature as complete, verify:

- [ ] All RSpec tests pass (`bundle exec rspec`)
- [ ] Code coverage meets 85% minimum threshold
- [ ] Coverage report reviewed for meaningful test quality
- [ ] RuboCop passes (`bin/rubocop`)
- [ ] Brakeman shows no new security issues (`bin/brakeman`)
- [ ] All changes committed with conventional commit messages
- [ ] All commits pushed to remote repository
- [ ] .ralph/@fix_plan.md task marked as complete
- [ ] Implementation documentation updated
- [ ] Inline code comments updated or added
- [ ] .ralph/@AGENT.md updated (if new patterns introduced)
- [ ] Breaking changes documented
- [ ] Features tested within Ralph loop (if applicable)
- [ ] CI/CD pipeline passes

### Rationale

These standards ensure:
- **Quality**: High test coverage and pass rates prevent regressions
- **Traceability**: Git commits and .ralph/@fix_plan.md provide clear history of changes
- **Maintainability**: Current documentation reduces onboarding time and prevents knowledge loss
- **Collaboration**: Pushed changes enable team visibility and code review
- **Reliability**: Consistent quality gates maintain production stability
- **Automation**: Ralph integration ensures continuous development practices

**Enforcement**: AI agents should automatically apply these standards to all feature development tasks without requiring explicit instruction for each task.

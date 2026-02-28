# What Claude Code Can Do — A Showcase

Real examples from sessions on this project and other projects by the same developer. Everything below actually happened — these aren't hypotheticals.

---

## 1. Build Three Features From a One-Line Prompt

**Prompt:** "start and manage work on epics (bd tasks) in sequential order, use /develop for each epic."

**What happened:** Claude Code picked up three planned epics from the issue tracker and delivered them end-to-end in a single session:

- **Epic 1 — Public Presence & Discovery:** Landing page, recipe CRUD, search, tag filtering, role-based publishing (16 tests)
- **Epic 2 — Onboarding & Privacy:** 3-step signup, session auth, profile visibility based on shared event attendance (61 tests)
- **Epic 3 — Capacity & Waitlist:** RSVP with capacity limits, automatic waitlist promotion, email notifications, database locking (116 tests)

Then it created 3 GitHub PRs, resolved merge conflicts between the branches, rebased onto updated main, and updated PR base branches — all autonomously.

**The developer's total input:** 7 brief messages across a 76-message session. Mostly "continue" and pasting a bug report.

---

## 2. Recognize Incomplete Requirements and Ask the Right Questions

**Prompt:** "Do not allow user to RSVP on past events. But don't just disable or hide the button. Assume he's from organiser POV and wants to engage users."

**What happened:** CC assessed the requirement as incomplete and asked 4 targeted questions:
- What should the engagement card show?
- Should it include a photo gallery?
- What layout pattern — full card or compact?
- Show recipes from the past event?

The developer answered with "1. ok / 2. yes / 3. A / 4. yes, show" — four terse answers. CC then delivered the full feature: backend validation, engagement card UI, server-side security check, tests, and a PR.

**Takeaway:** CC doesn't blindly implement vague requirements. It explores the codebase first, understands what's possible, and asks targeted questions before building.

---

## 3. Fix All Instances, Not Just the One You Reported

**Prompt:** User reported a CSS rendering bug — raw class names appearing in the HTML.

**What happened:** CC recognized this was the third occurrence of the same root cause: Slim's template parser breaks on CSS bracket notation like `shadow-[8px_8px_0px_#1c1917]`. Instead of fixing just the reported instance, CC:

1. Identified the root cause pattern
2. Grepped the entire codebase for all occurrences
3. Found the bug in 6 different templates
4. Fixed all of them in one sweep

**Takeaway:** CC behaves like a senior engineer — it fixes the pattern, not just the symptom.

---

## 4. Design Systems Architecture Collaboratively

**Prompt:** User asked CC to build a multi-agent development workflow (planner + implementer + reviewer).

**What happened:** Mid-implementation, CC paused and asked an architecture question: "Do you think this is a job for a single agent, or would sub-agents improve the outcome?" It presented a comparison table with tradeoffs, recommended a 2-agent approach (explorer + specifier), and only built it after getting confirmation.

**Takeaway:** CC raises design decisions proactively. It doesn't just execute — it thinks about whether the approach is right.

---

## 5. Deploy to Production in a Conversation

**From another project (gmail-assistant):** All emails stuck at "pending" in production. CC investigated the root cause, fixed it, renamed confusing database columns, ran migrations on the production K3s cluster, deployed new code, verified the fix, then hardened with tests — all in one conversational session.

**From another project (coworking-praha):** CC set up a full GitOps pipeline across two repositories: Kubernetes manifests (deployment, service, ingress, PVC, secrets, image automation) in the cluster repo, plus Docker workflow and entrypoint in the app repo. Both repos committed and pushed.

---

## 6. Research the Web and Structure Data

**From another project (coworking-praha):** CC used web search to research real coworking spaces across Prague, scraped data from multiple websites, structured it into YAML data files for 12+ locations, and then evaluated data quality across dimensions like pricing accuracy and photo availability.

---

## 7. Analyze Images for Data Extraction

**From another project (medicmee):** User uploaded photos of blood test request forms. CC analyzed the medical images, extracted test group hierarchies and individual markers, structured the data, and stored it for use in a lab results feature. CC is multimodal — it can read screenshots, photos, PDFs.

---

## 8. Turn a Bug Into an Architecture Improvement

**From another project (medicmee):** User hit Ctrl+C during a 160,000-patient sync and discovered it corrupted state. CC fixed the signal handling bug, then went further: designed and implemented a resumable sync mechanism (checkpoint after each batch, ordered by patient ID), then optimized chunked loading for the full dataset. Bug fix → architecture improvement → performance optimization, all in one session.

---

## How to Get the Most Out of CC

Based on these sessions, patterns that work well:

**Give high-level intent, not low-level instructions.** "Build the waitlist feature" works better than "create a migration, then a model, then a controller..." CC understands the full stack and makes good decisions about implementation details.

**Use `/develop` for features.** The custom workflow command on this project runs analysis → planning → implementation → review as a pipeline. CC creates a branch, writes code, writes tests, and opens a PR.

**Report bugs with context.** Paste the error, the URL, and what you expected. CC will investigate the root cause, not just patch the symptom.

**Say "continue" liberally.** When CC pauses for confirmation mid-workflow, a simple "continue" keeps it moving. Save your detailed feedback for review time.

**Review the PR, not the process.** CC creates proper PRs with descriptions. Review the diff like you would any colleague's code.

**Ask CC to explore before building.** "What's the current auth setup?" or "How does the waitlist work?" — CC can read and explain the entire codebase before you make changes.

**Use it for ops too.** Database migrations, deployment, K8s manifests, Docker setup — CC handles infrastructure as naturally as application code.

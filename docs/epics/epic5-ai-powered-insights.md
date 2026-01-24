## **Epic 5: AI-Powered Insights**

**Goal:** To provide deep context for proposed topics using Large Language Models.

### **5.1 User Story: Cached Topic Unfolding**

* **Description:** As a user, I want to "Explore" a topic to see an AI-generated breakdown of what it entails.
* **Motivation:** Brief handles may be vague; an LLM can provide a "preview" of the potential discussion.
* **Acceptance Criteria:**
* [ ] An "Explore" button triggers an LLM call using the Topic's Handle and Description as a prompt.
* [ ] **Global Cache:** The first result generated is cached for all users to see.
* [ ] Subsequent clicks on "Explore" load the cached response instantly without new API calls.

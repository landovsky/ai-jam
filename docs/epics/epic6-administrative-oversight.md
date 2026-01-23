## **Epic 6: Administrative Oversight**

**Goal:** To provide tools for quality control and logistical finalization.

### **6.1 User Story: Admin Cache Refresh**

* **Description:** As an Admin, I want to force the LLM to regenerate a topic's exploration content.
* **Motivation:** If a topic description changes significantly or the AI response was poor, a refresh is necessary.
* **Acceptance Criteria:**
* [ ] Admins have a "Refresh AI" button on every Topic detail page.
* [ ] Clicking "Refresh" invalidates the current cache and triggers a new LLM call.



### **6.2 User Story: Manual Topic & Manager Overrides**

* **Description:** As an Admin, I want to manage the topic list and assign leaders manually.
* **Motivation:** To ensure the event schedule is balanced and all popular topics have a designated facilitator.
* **Acceptance Criteria:**
* [ ] Admins can assign any registered user as a "Manager" to a topic.
* [ ] Admins can "Promote" a topic from a proposal to the "Official Event Agenda."
* [ ] Admins can edit any user's suggested topic to improve clarity or formatting.

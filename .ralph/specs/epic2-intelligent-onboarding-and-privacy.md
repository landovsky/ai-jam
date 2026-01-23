## **Epic 2: Intelligent Onboarding & Privacy**

**Goal:** To build a rich member database while strictly protecting personal data until it is contextually relevant.

### **2.1 User Story: Three-Step Progressive Onboarding**

* **Description:** As an anonymous user, I want to sign up through a flow that collects my interests before my credentials.
* **Motivation:** Leading with "Interests" provides immediate personal value and reduces friction during the signup process.
* **Acceptance Criteria:**
* [ ] **Step 1:** Users select/input AI interests or tools they use.
* [ ] **Step 2:** User creates an account (Email/Password).
* [ ] **Step 3:** User provides a short personal/professional bio.
* [ ] System persists data from Step 1 even if the flow is briefly interrupted.



### **2.2 User Story: Contextual Profile Privacy**

* **Description:** As a registered user, I want my bio and interests to be hidden from the general public.
* **Motivation:** Privacy is paramount; I only want to share my details with those I am actually meeting in person.
* **Acceptance Criteria:**
* [ ] Bio and Interests are hidden from all users by default.
* [ ] **Event Unlock:** A user's profile becomes visible *only* to other Attendees of a specific event once they have successfully RSVP'd.
* [ ] Admin roles maintain visibility of all profiles for moderation purposes.

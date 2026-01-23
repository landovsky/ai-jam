## **Epic 3: Event Engagement & Capacity**

**Goal:** To manage physical space constraints and handle high-demand attendance fairly.

### **3.1 User Story: RSVP with Capacity Tracking**

* **Description:** As a registered user, I want to RSVP to an event and see real-time availability.
* **Motivation:** I need to know if a spot is guaranteed before I commit my time.
* **Acceptance Criteria:**
* [ ] Each event has a hard-coded capacity limit set by an Admin.
* [ ] The UI displays "X spots remaining."
* [ ] Users can toggle their status between "Attending" and "Not Attending."



### **3.2 User Story: FIFO Waiting List**

* **Description:** As a registered user, I want to join a waiting list if an event is full.
* **Motivation:** To ensure a fair chance of attending if someone cancels their RSVP.
* **Acceptance Criteria:**
* [ ] When capacity is reached, the RSVP button changes to "Join Waitlist."
* [ ] The waitlist operates on a First-In-First-Out (FIFO) basis.
* [ ] **Auto-Promotion:** If an attendee cancels, the system automatically promotes the next person on the waitlist to "Attending" and sends a notification.

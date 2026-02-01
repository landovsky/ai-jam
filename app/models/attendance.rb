class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :jam_session

  validates :user_id, uniqueness: { scope: :jam_session_id, message: "has already RSVP'd to this event" }
  validates :role, inclusion: { in: %w[organizer attendee speaker], allow_nil: true }
end

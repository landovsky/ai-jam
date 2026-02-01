class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :jam_session

  # Status enum for attendance state
  enum status: {
    attending: 'attending',
    waitlisted: 'waitlisted',
    cancelled: 'cancelled'
  }, _prefix: true

  validates :user_id, uniqueness: { scope: :jam_session_id, message: "has already RSVP'd to this event" }
  validates :role, inclusion: { in: %w[organizer attendee speaker], allow_nil: true }
  validates :waitlist_position, presence: true, if: :status_waitlisted?
  validates :waitlist_position, absence: true, unless: :status_waitlisted?

  # Scopes
  scope :waitlisted, -> { where(status: 'waitlisted').order(:waitlist_position) }
  scope :attending_only, -> { where(status: 'attending') }
end

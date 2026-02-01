class WaitlistPromotionJob < ApplicationJob
  queue_as :default

  def perform(jam_session_id)
    jam_session = JamSession.find(jam_session_id)

    # Promote the next waitlisted user
    promoted_attendance = jam_session.promote_next_from_waitlist

    # Send notification email if someone was promoted
    if promoted_attendance
      WaitlistMailer.promotion_notification(promoted_attendance.id).deliver_later
    end
  end
end

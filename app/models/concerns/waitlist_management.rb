module WaitlistManagement
  extend ActiveSupport::Concern

  # Promotes the next waitlisted user to attending status
  # Returns the promoted attendance or nil if no one is waitlisted
  def promote_next_from_waitlist
    ActiveRecord::Base.transaction do
      next_attendance = attendances.waitlisted.lock.first
      return nil if next_attendance.nil?

      # Get the position before clearing it
      old_position = next_attendance.waitlist_position

      # Promote the user
      next_attendance.update!(
        status: 'attending',
        waitlist_position: nil,
        promoted_at: Time.current
      )

      # Reorder remaining waitlist
      reorder_waitlist_after_position(old_position)

      next_attendance
    end
  end

  # Assigns the next available waitlist position
  def assign_waitlist_position
    max_position = attendances.waitlisted.maximum(:waitlist_position) || 0
    max_position + 1
  end

  # Reorders the waitlist after a user at the given position is removed
  def reorder_waitlist_after_position(position)
    return if position.nil?

    attendances.waitlisted.where('waitlist_position > ?', position).find_each do |attendance|
      attendance.update!(waitlist_position: attendance.waitlist_position - 1)
    end
  end
end

module ProfileVisibility
  extend ActiveSupport::Concern

  # Check if this user's profile is visible to another user
  # Profiles are visible when users share at least one event attendance (both attending, not waitlisted)
  def visible_to?(other_user)
    return false if other_user.nil?
    return true if other_user.id == self.id # Users can always see their own profile

    # Use EXISTS query to avoid loading full associations
    # Only check 'attending' status, not waitlisted
    Attendance.where(user_id: self.id, status: 'attending')
      .where(jam_session_id: Attendance.select(:jam_session_id).where(user_id: other_user.id, status: 'attending'))
      .exists?
  end

  # Returns jam sessions both users attended (with 'attending' status)
  def shared_events_with(other_user)
    return JamSession.none if other_user.nil?

    JamSession.joins(:attendances)
      .where(attendances: { user_id: [self.id, other_user.id], status: 'attending' })
      .group('jam_sessions.id')
      .having('COUNT(DISTINCT attendances.user_id) = 2')
  end

  class_methods do
    # Scope returning users whose profiles are visible to the given user
    def visible_to(user)
      return none if user.nil?

      # Find all users who share at least one event with the given user (both attending)
      joins(:attendances)
        .where(attendances: {
          jam_session_id: Attendance.select(:jam_session_id).where(user_id: user.id, status: 'attending'),
          status: 'attending'
        })
        .where.not(id: user.id)
        .distinct
    end
  end
end

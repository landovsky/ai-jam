class JamSessionsController < ApplicationController
  def index
    # Use left_joins with conditional count to avoid N+1 queries for attendee counts
    # Only count 'attending' users, not waitlisted
    @upcoming_sessions = JamSession.upcoming
      .left_joins(:attendances)
      .select("jam_sessions.*, COUNT(CASE WHEN attendances.status = 'attending' THEN 1 END) AS attendees_count")
      .group('jam_sessions.id')
      .limit(10)
    @past_sessions = JamSession.past
      .left_joins(:attendances)
      .select("jam_sessions.*, COUNT(CASE WHEN attendances.status = 'attending' THEN 1 END) AS attendees_count")
      .group('jam_sessions.id')
      .limit(10)
  end

  def show
    @jam_session = JamSession.published_only.find(params[:id])
    # Eager load associations to avoid N+1 queries
    # Only show users with 'attending' status, not waitlisted
    @attendees = @jam_session.users
      .joins(:attendances)
      .where(attendances: { jam_session_id: @jam_session.id, status: 'attending' })
      .includes(:attendances, :jam_sessions)
    @current_attendance = current_user&.attendances&.find_by(jam_session: @jam_session)

    # Load data for past events
    if @jam_session.past?
      @published_recipes = @jam_session.recipes.published.includes(:author)
      @has_upcoming_events = JamSession.upcoming.exists?
    end
  end
end

class JamSessionsController < ApplicationController
  def index
    @upcoming_sessions = JamSession.upcoming.limit(10)
    @past_sessions = JamSession.past.limit(10)
  end

  def show
    @jam_session = JamSession.published_only.find(params[:id])
    # Eager load associations to avoid N+1 queries
    @attendees = @jam_session.users.includes(:attendances, :jam_sessions)
    @current_attendance = current_user&.attendances&.find_by(jam_session: @jam_session)
  end
end

class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    @jam_session = JamSession.find(params[:id])
    @attendance = @jam_session.attendances.build(user: current_user, role: 'attendee')

    if @attendance.save
      flash[:notice] = t('attendances.rsvp_success')
      redirect_to jam_session_path(id: @jam_session.id)
    else
      flash[:alert] = t('attendances.rsvp_error', error: @attendance.errors.full_messages.join(', '))
      redirect_to jam_session_path(id: @jam_session.id)
    end
  end

  def destroy
    @attendance = current_user.attendances.find(params[:id])
    @jam_session = @attendance.jam_session
    @attendance.destroy

    flash[:notice] = t('attendances.cancel_success')
    redirect_to jam_session_path(id: @jam_session.id)
  end
end

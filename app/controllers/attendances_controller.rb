class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    @jam_session = JamSession.find(params[:id])

    # Validate that event is not in the past
    if @jam_session.past?
      flash[:alert] = t('attendances.event_ended')
      redirect_to jam_session_path(id: @jam_session.id)
      return
    end

    # Use transaction with locking to prevent race conditions
    JamSession.transaction do
      @jam_session.lock!

      # Check if event is at capacity
      if @jam_session.at_capacity?
        # Add to waitlist
        position = @jam_session.assign_waitlist_position
        @attendance = @jam_session.attendances.build(
          user: current_user,
          role: 'attendee',
          status: 'waitlisted',
          waitlist_position: position
        )

        if @attendance.save
          flash[:notice] = t('attendances.joined_waitlist', position: position)
          redirect_to jam_session_path(id: @jam_session.id)
        else
          flash[:alert] = t('attendances.rsvp_error', error: @attendance.errors.full_messages.join(', '))
          redirect_to jam_session_path(id: @jam_session.id)
        end
      else
        # Add as attending
        @attendance = @jam_session.attendances.build(
          user: current_user,
          role: 'attendee',
          status: 'attending'
        )

        if @attendance.save
          flash[:notice] = t('attendances.rsvp_success')
          redirect_to jam_session_path(id: @jam_session.id)
        else
          flash[:alert] = t('attendances.rsvp_error', error: @attendance.errors.full_messages.join(', '))
          redirect_to jam_session_path(id: @jam_session.id)
        end
      end
    end
  end

  def destroy
    @attendance = current_user.attendances.find(params[:id])
    @jam_session = @attendance.jam_session
    was_attending = @attendance.status_attending?
    was_waitlisted = @attendance.status_waitlisted?
    waitlist_position = @attendance.waitlist_position

    @attendance.destroy

    # If user was attending, promote next waitlisted user
    if was_attending
      WaitlistPromotionJob.perform_later(@jam_session.id)
    elsif was_waitlisted
      # Reorder waitlist if user was on it
      @jam_session.reorder_waitlist_after_position(waitlist_position)
    end

    flash[:notice] = t('attendances.cancel_success')
    redirect_to jam_session_path(id: @jam_session.id)
  end
end

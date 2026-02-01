require 'rails_helper'

RSpec.describe 'Attendances', type: :request do
  let(:user) { create(:user) }
  let(:jam_session) { create(:jam_session) }

  describe 'POST /jam_sessions/:id/rsvp' do
    context 'when user is authenticated' do
      before { allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user) }

      it 'creates an attendance record' do
        expect {
          post rsvp_jam_session_path(id: jam_session.id)
        }.to change(Attendance, :count).by(1)
      end

      it 'redirects to the jam session show page' do
        post rsvp_jam_session_path(id: jam_session.id)
        expect(response).to redirect_to(jam_session_path(id: jam_session.id))
      end

      it 'sets a success flash message' do
        post rsvp_jam_session_path(id: jam_session.id)
        expect(flash[:notice]).to be_present
      end

      context 'when user already RSVP\'d' do
        before { create(:attendance, user: user, jam_session: jam_session) }

        it 'does not create a duplicate attendance' do
          expect {
            post rsvp_jam_session_path(id: jam_session.id)
          }.not_to change(Attendance, :count)
        end

        it 'sets an error flash message' do
          post rsvp_jam_session_path(id: jam_session.id)
          expect(flash[:alert]).to be_present
        end
      end

      context 'when event is at capacity' do
        let(:jam_session) { create(:jam_session, capacity: 2) }

        before do
          create_list(:attendance, 2, jam_session: jam_session, status: 'attending')
        end

        it 'creates a waitlisted attendance' do
          expect {
            post rsvp_jam_session_path(id: jam_session.id)
          }.to change(Attendance, :count).by(1)

          attendance = Attendance.last
          expect(attendance.status).to eq('waitlisted')
          expect(attendance.waitlist_position).to eq(1)
        end

        it 'assigns correct waitlist position' do
          create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

          post rsvp_jam_session_path(id: jam_session.id)

          attendance = Attendance.last
          expect(attendance.waitlist_position).to eq(2)
        end

        it 'sets a waitlist flash message' do
          post rsvp_jam_session_path(id: jam_session.id)
          expect(flash[:notice]).to include('waitlist')
        end
      end

      context 'when event has capacity available' do
        let(:jam_session) { create(:jam_session, capacity: 5) }

        it 'creates an attending attendance' do
          post rsvp_jam_session_path(id: jam_session.id)

          attendance = Attendance.last
          expect(attendance.status).to eq('attending')
          expect(attendance.waitlist_position).to be_nil
        end
      end

      context 'when event has no capacity limit' do
        let(:jam_session) { create(:jam_session, capacity: nil) }

        it 'creates an attending attendance' do
          post rsvp_jam_session_path(id: jam_session.id)

          attendance = Attendance.last
          expect(attendance.status).to eq('attending')
        end
      end
    end

    context 'when user is not authenticated' do
      it 'redirects to onboarding' do
        post rsvp_jam_session_path(id: jam_session.id)
        expect(response).to redirect_to(step1_onboarding_index_path)
      end
    end
  end

  describe 'DELETE /attendances/:id' do
    let!(:attendance) { create(:attendance, user: user, jam_session: jam_session) }

    context 'when user is authenticated' do
      before { allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user) }

      it 'destroys the attendance record' do
        expect {
          delete attendance_path(id: attendance.id)
        }.to change(Attendance, :count).by(-1)
      end

      it 'redirects to the jam session show page' do
        delete attendance_path(id: attendance.id)
        expect(response).to redirect_to(jam_session_path(id: jam_session.id))
      end

      it 'sets a success flash message' do
        delete attendance_path(id: attendance.id)
        expect(flash[:notice]).to be_present
      end

      context 'when cancelling attending status' do
        let(:jam_session) { create(:jam_session, capacity: 2) }
        let!(:attendance) { create(:attendance, user: user, jam_session: jam_session, status: 'attending') }

        it 'enqueues a promotion job' do
          expect {
            delete attendance_path(id: attendance.id)
          }.to have_enqueued_job(WaitlistPromotionJob).with(jam_session.id)
        end
      end

      context 'when cancelling waitlisted status' do
        let(:jam_session) { create(:jam_session, capacity: 2) }
        let!(:attendance) { create(:attendance, user: user, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2) }
        let!(:other_waitlisted) { create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 3) }

        it 'does not enqueue a promotion job' do
          expect {
            delete attendance_path(id: attendance.id)
          }.not_to have_enqueued_job(WaitlistPromotionJob)
        end

        it 'reorders remaining waitlist' do
          delete attendance_path(id: attendance.id)
          expect(other_waitlisted.reload.waitlist_position).to eq(2)
        end
      end
    end

    context 'when user is not authenticated' do
      it 'redirects to onboarding' do
        delete attendance_path(id: attendance.id)
        expect(response).to redirect_to(step1_onboarding_index_path)
      end
    end
  end
end

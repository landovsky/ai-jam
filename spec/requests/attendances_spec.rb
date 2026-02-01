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
    end

    context 'when user is not authenticated' do
      it 'redirects to onboarding' do
        delete attendance_path(id: attendance.id)
        expect(response).to redirect_to(step1_onboarding_index_path)
      end
    end
  end
end

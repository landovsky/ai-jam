require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  let(:user_a) { create(:user, email: 'user_a@example.com', bio: 'Bio A', interests: ['Ruby', 'AI'].to_json) }
  let(:user_b) { create(:user, email: 'user_b@example.com', bio: 'Bio B', interests: ['Python', 'ML'].to_json) }

  describe 'GET /profiles/:id' do
    context 'when users share an event' do
      before do
        jam_session = create(:jam_session)
        create(:attendance, user: user_a, jam_session: jam_session)
        create(:attendance, user: user_b, jam_session: jam_session)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_a)
      end

      it 'displays the user profile with bio and interests' do
        get profile_path(user_b)
        expect(response).to have_http_status(:success)
        expect(response.body).to include('Bio B')
        expect(response.body).to include('Python')
        expect(response.body).to include('ML')
      end
    end

    context 'when users do not share an event' do
      before do
        jam_session_a = create(:jam_session, title: 'Event A')
        jam_session_b = create(:jam_session, title: 'Event B')
        create(:attendance, user: user_a, jam_session: jam_session_a)
        create(:attendance, user: user_b, jam_session: jam_session_b)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_a)
      end

      it 'displays locked profile message' do
        get profile_path(user_b)
        expect(response).to have_http_status(:success)
        expect(response.body).to include('Profile')
        expect(response.body).to include('Private')
      end

      it 'does not display bio or interests' do
        get profile_path(user_b)
        expect(response.body).not_to include('Bio B')
        expect(response.body).not_to include('Python')
      end
    end

    context 'when viewing own profile' do
      before { allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_a) }

      it 'displays own profile with bio and interests' do
        get profile_path(user_a)
        expect(response).to have_http_status(:success)
        expect(response.body).to include('Bio A')
        expect(response.body).to include('Ruby')
        expect(response.body).to include('AI')
      end
    end

    context 'when user is a guest (not signed in)' do
      before { allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(nil) }

      it 'displays locked profile message' do
        get profile_path(user_a)
        expect(response).to have_http_status(:success)
        expect(response.body).to include('Private')
      end
    end
  end
end

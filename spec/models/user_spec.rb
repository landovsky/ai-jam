require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:attendances).dependent(:destroy) }
    it { should have_many(:jam_sessions).through(:attendances) }
  end

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to have_secure_password }

    it 'validates format of email' do
      user = build(:user, email: 'invalid_email')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include('is invalid')
    end
  end

  describe 'ProfileVisibility concern' do
    describe '#visible_to?' do
      let(:user_a) { create(:user, email: 'user_a@example.com') }
      let(:user_b) { create(:user, email: 'user_b@example.com') }
      let(:user_c) { create(:user, email: 'user_c@example.com') }

      context 'when users share an event' do
        it 'returns true' do
          jam_session = create(:jam_session)
          create(:attendance, user: user_a, jam_session: jam_session)
          create(:attendance, user: user_b, jam_session: jam_session)

          expect(user_a.visible_to?(user_b)).to be true
          expect(user_b.visible_to?(user_a)).to be true
        end
      end

      context 'when users do not share an event' do
        it 'returns false' do
          jam_session_a = create(:jam_session, title: 'Event A')
          jam_session_b = create(:jam_session, title: 'Event B')
          create(:attendance, user: user_a, jam_session: jam_session_a)
          create(:attendance, user: user_b, jam_session: jam_session_b)

          expect(user_a.visible_to?(user_b)).to be false
          expect(user_b.visible_to?(user_a)).to be false
        end
      end

      context 'when viewing own profile' do
        it 'returns true' do
          expect(user_a.visible_to?(user_a)).to be true
        end
      end

      context 'when viewer is nil (guest user)' do
        it 'returns false' do
          expect(user_a.visible_to?(nil)).to be false
        end
      end

      context 'when users share multiple events' do
        it 'returns true' do
          jam_session1 = create(:jam_session, title: 'Event 1')
          jam_session2 = create(:jam_session, title: 'Event 2')
          create(:attendance, user: user_a, jam_session: jam_session1)
          create(:attendance, user: user_a, jam_session: jam_session2)
          create(:attendance, user: user_b, jam_session: jam_session1)
          create(:attendance, user: user_b, jam_session: jam_session2)

          expect(user_a.visible_to?(user_b)).to be true
        end
      end
    end

    describe '#shared_events_with' do
      let(:user_a) { create(:user, email: 'user_a@example.com') }
      let(:user_b) { create(:user, email: 'user_b@example.com') }

      it 'returns events both users attended' do
        shared_event = create(:jam_session, title: 'Shared Event')
        user_a_only_event = create(:jam_session, title: 'User A Only')
        user_b_only_event = create(:jam_session, title: 'User B Only')

        create(:attendance, user: user_a, jam_session: shared_event)
        create(:attendance, user: user_b, jam_session: shared_event)
        create(:attendance, user: user_a, jam_session: user_a_only_event)
        create(:attendance, user: user_b, jam_session: user_b_only_event)

        shared_events = user_a.shared_events_with(user_b)
        expect(shared_events).to include(shared_event)
        expect(shared_events).not_to include(user_a_only_event)
        expect(shared_events).not_to include(user_b_only_event)
      end

      it 'returns empty collection when users have no shared events' do
        jam_session_a = create(:jam_session, title: 'Event A')
        jam_session_b = create(:jam_session, title: 'Event B')
        create(:attendance, user: user_a, jam_session: jam_session_a)
        create(:attendance, user: user_b, jam_session: jam_session_b)

        expect(user_a.shared_events_with(user_b)).to be_empty
      end

      it 'returns empty collection when other_user is nil' do
        expect(user_a.shared_events_with(nil)).to be_empty
      end
    end

    describe '.visible_to' do
      let(:viewer) { create(:user, email: 'viewer@example.com') }
      let(:attendee1) { create(:user, email: 'attendee1@example.com') }
      let(:attendee2) { create(:user, email: 'attendee2@example.com') }
      let(:stranger) { create(:user, email: 'stranger@example.com') }

      it 'returns users who share events with the viewer' do
        jam_session = create(:jam_session)
        create(:attendance, user: viewer, jam_session: jam_session)
        create(:attendance, user: attendee1, jam_session: jam_session)
        create(:attendance, user: attendee2, jam_session: jam_session)

        visible_users = User.visible_to(viewer)
        expect(visible_users).to include(attendee1, attendee2)
        expect(visible_users).not_to include(viewer) # Should not include self
        expect(visible_users).not_to include(stranger)
      end

      it 'returns empty collection when viewer is nil' do
        expect(User.visible_to(nil)).to be_empty
      end

      it 'returns distinct users even when sharing multiple events' do
        jam_session1 = create(:jam_session, title: 'Event 1')
        jam_session2 = create(:jam_session, title: 'Event 2')
        create(:attendance, user: viewer, jam_session: jam_session1)
        create(:attendance, user: viewer, jam_session: jam_session2)
        create(:attendance, user: attendee1, jam_session: jam_session1)
        create(:attendance, user: attendee1, jam_session: jam_session2)

        visible_users = User.visible_to(viewer)
        expect(visible_users.count).to eq(1)
        expect(visible_users).to include(attendee1)
      end
    end
  end
end

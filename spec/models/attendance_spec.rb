require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:jam_session) }
  end

  describe 'validations' do
    subject { build(:attendance) }

    it { should validate_uniqueness_of(:user_id).scoped_to(:jam_session_id).with_message("has already RSVP'd to this event") }
    it { should allow_value('organizer').for(:role) }
    it { should allow_value('attendee').for(:role) }
    it { should allow_value('speaker').for(:role) }
    it { should allow_value(nil).for(:role) }
    it { should_not allow_value('invalid_role').for(:role) }
  end

  describe 'duplicate RSVP prevention' do
    it 'prevents the same user from RSVPing to the same event twice' do
      user = create(:user)
      jam_session = create(:jam_session)
      create(:attendance, user: user, jam_session: jam_session)

      duplicate_attendance = build(:attendance, user: user, jam_session: jam_session)
      expect(duplicate_attendance).not_to be_valid
      expect(duplicate_attendance.errors[:user_id]).to include("has already RSVP'd to this event")
    end

    it 'allows the same user to RSVP to different events' do
      user = create(:user)
      jam_session1 = create(:jam_session, title: 'Event 1')
      jam_session2 = create(:jam_session, title: 'Event 2')

      create(:attendance, user: user, jam_session: jam_session1)
      attendance2 = build(:attendance, user: user, jam_session: jam_session2)

      expect(attendance2).to be_valid
    end

    it 'allows different users to RSVP to the same event' do
      user1 = create(:user, email: 'user1@example.com')
      user2 = create(:user, email: 'user2@example.com')
      jam_session = create(:jam_session)

      create(:attendance, user: user1, jam_session: jam_session)
      attendance2 = build(:attendance, user: user2, jam_session: jam_session)

      expect(attendance2).to be_valid
    end
  end
end

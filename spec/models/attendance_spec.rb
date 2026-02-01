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

  describe 'status enum' do
    it 'has attending status' do
      attendance = build(:attendance, status: 'attending')
      expect(attendance.status_attending?).to be true
    end

    it 'has waitlisted status' do
      attendance = build(:attendance, status: 'waitlisted', waitlist_position: 1)
      expect(attendance.status_waitlisted?).to be true
    end

    it 'has cancelled status' do
      attendance = build(:attendance, status: 'cancelled')
      expect(attendance.status_cancelled?).to be true
    end

    it 'defaults to attending' do
      attendance = create(:attendance)
      expect(attendance.status).to eq('attending')
    end
  end

  describe 'waitlist_position validation' do
    it 'requires waitlist_position when status is waitlisted' do
      attendance = build(:attendance, status: 'waitlisted', waitlist_position: nil)
      expect(attendance).not_to be_valid
      expect(attendance.errors[:waitlist_position]).to include("can't be blank")
    end

    it 'allows waitlist_position when status is waitlisted' do
      attendance = build(:attendance, status: 'waitlisted', waitlist_position: 1)
      expect(attendance).to be_valid
    end

    it 'does not allow waitlist_position when status is attending' do
      attendance = build(:attendance, status: 'attending', waitlist_position: 1)
      expect(attendance).not_to be_valid
      expect(attendance.errors[:waitlist_position]).to include("must be blank")
    end

    it 'does not allow waitlist_position when status is cancelled' do
      attendance = build(:attendance, status: 'cancelled', waitlist_position: 1)
      expect(attendance).not_to be_valid
      expect(attendance.errors[:waitlist_position]).to include("must be blank")
    end
  end

  describe 'scopes' do
    let(:jam_session) { create(:jam_session) }
    let!(:attending1) { create(:attendance, jam_session: jam_session, status: 'attending') }
    let!(:attending2) { create(:attendance, jam_session: jam_session, status: 'attending') }
    let!(:waitlisted1) { create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1) }
    let!(:waitlisted2) { create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2) }
    let!(:cancelled) { create(:attendance, jam_session: jam_session, status: 'cancelled') }

    describe '.waitlisted' do
      it 'returns only waitlisted attendances' do
        expect(jam_session.attendances.waitlisted).to contain_exactly(waitlisted1, waitlisted2)
      end

      it 'orders by waitlist_position' do
        expect(jam_session.attendances.waitlisted.first).to eq(waitlisted1)
        expect(jam_session.attendances.waitlisted.last).to eq(waitlisted2)
      end
    end

    describe '.attending_only' do
      it 'returns only attending attendances' do
        expect(jam_session.attendances.attending_only).to contain_exactly(attending1, attending2)
      end
    end
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

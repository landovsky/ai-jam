require 'rails_helper'

RSpec.describe JamSession, type: :model do
  describe 'associations' do
    it { should have_many(:recipes).dependent(:nullify) }
    it { should have_many(:attendances).dependent(:destroy) }
    it { should have_many(:users).through(:attendances) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:held_on) }

    it 'validates capacity is positive' do
      jam_session = build(:jam_session, capacity: 0)
      expect(jam_session).not_to be_valid
      expect(jam_session.errors[:capacity]).to include('must be greater than 0')
    end

    it 'allows nil capacity for unlimited events' do
      jam_session = build(:jam_session, capacity: nil)
      expect(jam_session).to be_valid
    end

    it 'allows positive capacity' do
      jam_session = build(:jam_session, capacity: 20)
      expect(jam_session).to be_valid
    end
  end

  describe 'scopes' do
    describe '.published_only' do
      it 'returns only published jam sessions' do
        published = create(:jam_session, published: true)
        unpublished = create(:jam_session, published: false)

        expect(JamSession.published_only).to include(published)
        expect(JamSession.published_only).not_to include(unpublished)
      end
    end

    describe '.upcoming' do
      it 'returns future published jam sessions ordered by date' do
        future1 = create(:jam_session, held_on: 1.week.from_now.to_date, published: true)
        future2 = create(:jam_session, held_on: 2.weeks.from_now.to_date, published: true)
        past = create(:jam_session, held_on: 1.week.ago.to_date, published: true)
        unpublished_future = create(:jam_session, held_on: 3.weeks.from_now.to_date, published: false)

        upcoming = JamSession.upcoming
        expect(upcoming).to eq([future1, future2])
        expect(upcoming).not_to include(past)
        expect(upcoming).not_to include(unpublished_future)
      end
    end

    describe '.past' do
      it 'returns past published jam sessions ordered by date descending' do
        past1 = create(:jam_session, held_on: 1.week.ago.to_date, published: true)
        past2 = create(:jam_session, held_on: 2.weeks.ago.to_date, published: true)
        future = create(:jam_session, held_on: 1.week.from_now.to_date, published: true)
        unpublished_past = create(:jam_session, held_on: 3.weeks.ago.to_date, published: false)

        past_sessions = JamSession.past
        expect(past_sessions).to eq([past1, past2])
        expect(past_sessions).not_to include(future)
        expect(past_sessions).not_to include(unpublished_past)
      end
    end
  end

  describe '#past?' do
    it 'returns true when held_on is before today' do
      jam_session = create(:jam_session, held_on: 1.week.ago.to_date)
      expect(jam_session.past?).to be true
    end

    it 'returns false when held_on is today' do
      jam_session = create(:jam_session, held_on: Date.today)
      expect(jam_session.past?).to be false
    end

    it 'returns false when held_on is in the future' do
      jam_session = create(:jam_session, held_on: 1.week.from_now.to_date)
      expect(jam_session.past?).to be false
    end
  end

  describe '#user_attending?' do
    let(:jam_session) { create(:jam_session) }
    let(:user) { create(:user) }

    context 'when user has RSVP\'d with attending status' do
      it 'returns true' do
        create(:attendance, user: user, jam_session: jam_session, status: 'attending')
        expect(jam_session.user_attending?(user)).to be true
      end
    end

    context 'when user is waitlisted' do
      it 'returns false' do
        create(:attendance, user: user, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
        expect(jam_session.user_attending?(user)).to be false
      end
    end

    context 'when user has not RSVP\'d' do
      it 'returns false' do
        expect(jam_session.user_attending?(user)).to be false
      end
    end

    context 'when user is nil' do
      it 'returns false' do
        expect(jam_session.user_attending?(nil)).to be false
      end
    end
  end

  describe '#spots_remaining' do
    let(:jam_session) { create(:jam_session, capacity: 5) }

    it 'returns the number of spots remaining' do
      create_list(:attendance, 3, jam_session: jam_session, status: 'attending')
      expect(jam_session.spots_remaining).to eq(2)
    end

    it 'does not count waitlisted attendances' do
      create_list(:attendance, 3, jam_session: jam_session, status: 'attending')
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      expect(jam_session.spots_remaining).to eq(2)
    end

    it 'returns nil when capacity is not set' do
      jam_session = create(:jam_session, capacity: nil)
      expect(jam_session.spots_remaining).to be_nil
    end

    it 'returns 0 when at capacity' do
      create_list(:attendance, 5, jam_session: jam_session, status: 'attending')
      expect(jam_session.spots_remaining).to eq(0)
    end
  end

  describe '#at_capacity?' do
    let(:jam_session) { create(:jam_session, capacity: 5) }

    it 'returns false when under capacity' do
      create_list(:attendance, 3, jam_session: jam_session, status: 'attending')
      expect(jam_session.at_capacity?).to be false
    end

    it 'returns true when at capacity' do
      create_list(:attendance, 5, jam_session: jam_session, status: 'attending')
      expect(jam_session.at_capacity?).to be true
    end

    it 'returns true when over capacity' do
      create_list(:attendance, 6, jam_session: jam_session, status: 'attending')
      expect(jam_session.at_capacity?).to be true
    end

    it 'returns false when capacity is not set' do
      jam_session = create(:jam_session, capacity: nil)
      create_list(:attendance, 100, jam_session: jam_session, status: 'attending')
      expect(jam_session.at_capacity?).to be false
    end
  end

  describe '#has_waitlist?' do
    let(:jam_session) { create(:jam_session) }

    it 'returns true when there are waitlisted users' do
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      expect(jam_session.has_waitlist?).to be true
    end

    it 'returns false when there are no waitlisted users' do
      create(:attendance, jam_session: jam_session, status: 'attending')
      expect(jam_session.has_waitlist?).to be false
    end
  end

  describe '#next_waitlisted_user' do
    let(:jam_session) { create(:jam_session) }

    it 'returns the first waitlisted attendance by position' do
      waitlisted2 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2)
      waitlisted1 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      waitlisted3 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 3)

      expect(jam_session.next_waitlisted_user).to eq(waitlisted1)
    end

    it 'returns nil when no waitlisted users' do
      expect(jam_session.next_waitlisted_user).to be_nil
    end
  end
end

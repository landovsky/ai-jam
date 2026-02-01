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

  describe '#user_attending?' do
    let(:jam_session) { create(:jam_session) }
    let(:user) { create(:user) }

    context 'when user has RSVP\'d' do
      it 'returns true' do
        create(:attendance, user: user, jam_session: jam_session)
        expect(jam_session.user_attending?(user)).to be true
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
end

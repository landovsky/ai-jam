require 'rails_helper'

RSpec.describe WaitlistManagement, type: :model do
  let(:jam_session) { create(:jam_session, capacity: 5) }

  describe '#promote_next_from_waitlist' do
    it 'promotes the first waitlisted user to attending' do
      waitlisted = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      promoted = jam_session.promote_next_from_waitlist

      expect(promoted).to eq(waitlisted)
      expect(promoted.status).to eq('attending')
      expect(promoted.waitlist_position).to be_nil
      expect(promoted.promoted_at).to be_present
    end

    it 'reorders remaining waitlist after promotion' do
      waitlisted1 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      waitlisted2 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2)
      waitlisted3 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 3)

      jam_session.promote_next_from_waitlist

      expect(waitlisted2.reload.waitlist_position).to eq(1)
      expect(waitlisted3.reload.waitlist_position).to eq(2)
    end

    it 'returns nil when no waitlisted users' do
      expect(jam_session.promote_next_from_waitlist).to be_nil
    end

    it 'uses transaction to ensure atomicity' do
      waitlisted = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      # Verify that the method uses a transaction
      expect(ActiveRecord::Base).to receive(:transaction).and_call_original

      jam_session.promote_next_from_waitlist
    end
  end

  describe '#assign_waitlist_position' do
    it 'returns 1 when no waitlist exists' do
      expect(jam_session.assign_waitlist_position).to eq(1)
    end

    it 'returns the next position when waitlist exists' do
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2)

      expect(jam_session.assign_waitlist_position).to eq(3)
    end

    it 'does not count attending users' do
      create(:attendance, jam_session: jam_session, status: 'attending')
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      expect(jam_session.assign_waitlist_position).to eq(2)
    end
  end

  describe '#reorder_waitlist_after_position' do
    it 'decrements positions after the given position' do
      waitlisted1 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      waitlisted2 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2)
      waitlisted3 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 3)

      jam_session.reorder_waitlist_after_position(1)

      expect(waitlisted1.reload.waitlist_position).to eq(1)  # Unchanged
      expect(waitlisted2.reload.waitlist_position).to eq(1)  # Decremented
      expect(waitlisted3.reload.waitlist_position).to eq(2)  # Decremented
    end

    it 'handles nil position gracefully' do
      create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      expect { jam_session.reorder_waitlist_after_position(nil) }.not_to raise_error
    end

    it 'does not affect positions before the given position' do
      waitlisted1 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)
      waitlisted2 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 2)
      waitlisted3 = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 3)

      jam_session.reorder_waitlist_after_position(2)

      expect(waitlisted1.reload.waitlist_position).to eq(1)  # Unchanged
      expect(waitlisted2.reload.waitlist_position).to eq(2)  # Unchanged
      expect(waitlisted3.reload.waitlist_position).to eq(2)  # Decremented
    end
  end
end

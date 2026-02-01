require 'rails_helper'

RSpec.describe WaitlistPromotionJob, type: :job do
  let(:jam_session) { create(:jam_session, capacity: 2) }

  describe '#perform' do
    it 'promotes the next waitlisted user' do
      waitlisted = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      WaitlistPromotionJob.perform_now(jam_session.id)

      expect(waitlisted.reload.status).to eq('attending')
    end

    it 'sends a notification email when user is promoted' do
      waitlisted = create(:attendance, jam_session: jam_session, status: 'waitlisted', waitlist_position: 1)

      expect {
        WaitlistPromotionJob.perform_now(jam_session.id)
      }.to have_enqueued_job(ActionMailer::MailDeliveryJob).with('WaitlistMailer', 'promotion_notification', 'deliver_now', { args: [waitlisted.id] })
    end

    it 'handles case when no waitlisted users exist gracefully' do
      expect {
        WaitlistPromotionJob.perform_now(jam_session.id)
      }.not_to raise_error
    end

    it 'does not send email when no one is promoted' do
      expect {
        WaitlistPromotionJob.perform_now(jam_session.id)
      }.not_to have_enqueued_job(ActionMailer::MailDeliveryJob)
    end
  end
end

require 'rails_helper'

RSpec.describe WaitlistMailer, type: :mailer do
  describe '#promotion_notification' do
    let(:user) { create(:user, email: 'test@example.com') }
    let(:jam_session) { create(:jam_session, title: 'Test Event') }
    let(:attendance) { create(:attendance, user: user, jam_session: jam_session, status: 'attending', promoted_at: Time.current) }
    let(:mail) { WaitlistMailer.promotion_notification(attendance.id) }

    it 'renders the subject' do
      expect(mail.subject).to include('Test Event')
      expect(mail.subject).to include('waitlist')
    end

    it 'renders the receiver email' do
      expect(mail.to).to eq(['test@example.com'])
    end

    it 'renders the sender email' do
      expect(mail.from).to eq(['from@example.com'])
    end

    it 'includes event name in the body' do
      expect(mail.body.encoded).to include('Test Event')
    end

    it 'includes event link in the body' do
      expect(mail.body.encoded).to include(jam_session_url(id: jam_session.id))
    end

    it 'mentions profile visibility' do
      expect(mail.body.encoded).to include('profile')
    end
  end
end

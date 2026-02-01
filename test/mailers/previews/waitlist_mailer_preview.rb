# Preview all emails at http://localhost:3000/rails/mailers/waitlist_mailer
class WaitlistMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/waitlist_mailer/promotion_notification
  def promotion_notification
    WaitlistMailer.promotion_notification
  end
end

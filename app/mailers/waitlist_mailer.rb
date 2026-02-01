class WaitlistMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.waitlist_mailer.promotion_notification.subject
  #
  def promotion_notification(attendance_id)
    @attendance = Attendance.find(attendance_id)
    @user = @attendance.user
    @jam_session = @attendance.jam_session

    mail(
      to: @user.email,
      subject: t('waitlist_mailer.promotion_notification.subject', event: @jam_session.title)
    )
  end
end

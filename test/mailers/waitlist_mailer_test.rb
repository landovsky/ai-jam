require "test_helper"

class WaitlistMailerTest < ActionMailer::TestCase
  test "promotion_notification" do
    mail = WaitlistMailer.promotion_notification
    assert_equal "Promotion notification", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end

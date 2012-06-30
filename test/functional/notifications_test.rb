require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "notify_rsvp" do
    mail = Notifications.notify_rsvp
    assert_equal "Notify rsvp", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

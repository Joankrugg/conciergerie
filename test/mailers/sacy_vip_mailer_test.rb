require "test_helper"

class SacyVipMailerTest < ActionMailer::TestCase
  test "creation" do
    mail = SacyVipMailer.creation
    assert_equal "Creation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

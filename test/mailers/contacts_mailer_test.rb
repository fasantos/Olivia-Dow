require 'test_helper'

class ContactsMailerTest < ActionMailer::TestCase
  test "comment_response" do
    mail = ContactsMailer.comment_response
    assert_equal "Comment response", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "request_contact" do
    mail = ContactsMailer.request_contact
    assert_equal "Request contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

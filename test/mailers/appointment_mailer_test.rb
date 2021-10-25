require "test_helper"

class AppointmentMailerTest < ActionMailer::TestCase
  test "appointment_created" do
    mail = AppointmentMailer.appointment_created
    assert_equal "Appointment created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

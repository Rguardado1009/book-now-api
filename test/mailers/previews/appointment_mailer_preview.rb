# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/appointment_mailer/appointment_created
  def appointment_created
    AppointmentMailer.with(user: user)appointment_created
  end

end

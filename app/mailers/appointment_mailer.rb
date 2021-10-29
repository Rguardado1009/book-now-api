class AppointmentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appointment_mailer.appointment_created.subject
  #
  def appointment_created
    @appointment = appointment
    mail(to:@user.email, subject: 'Your Appointment was created')
  end

  
end

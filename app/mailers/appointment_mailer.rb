class AppointmentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appointment_mailer.appointment_created.subject
  #
  def appointment_created
    # @user= params[:user]
 
    @greeting = "Hi"

    mail to: "rguardado1009@gmail.com", subject: "Your appointment was successfully created"
  end
end

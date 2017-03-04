class UserMailer < ApplicationMailer

  default from: "calozf@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'calozf@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end

class UserMailer < ApplicationMailer

  default from: "calozf@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'calozf@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Bike Shop"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

  def successful_payment(user, product)
    @user = user
    @product = product
    mail(:to => user.email,
        :subject => "Confirmation of purchase #{product.name}")
  end
end

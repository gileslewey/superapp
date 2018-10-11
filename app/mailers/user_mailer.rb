class UserMailer < ApplicationMailer
  default from: "gileslewey@gmail.com"

    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'gileslewey@gmail.com',
           subject: "A new contact form message from #{name}")
    end

    def feedback_form(message)
    @message = message
      mail(to: 'gileslewey@gmail.com',
           subject: "You have received a new feedback")
    end

    def welcome(user)
      @appname = "Hobo Coins"
      mail(to: user.email,
          subject: "Welcome to #{@appname}!")
    end

    def order_created(user, product)
      @appname = "Hobo Coins"
      @product = product
      @user = user
      mail(to: user.email,
      subject: "Your order at #{@appname}")
    end
end

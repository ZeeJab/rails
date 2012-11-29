class Notifications < ActionMailer::Base
  default from: "zahra.arch@gmail.com"
  def welcome(user)
    @user = user
    @greeting = "Hi"

    mail to: "zahra.arch@gmail.com", :subject => "Welcome to My Pirate Mail...arrrr"
  end
  def logoff
    @greeting = "Hi"

    mail to: "zahra.arch@gmail.com", :subject => "I noticed you logged off...this is not creepy!"
  end
end

class UserMailer < ApplicationMailer
  default from: 'vsakur2@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome Email')
  end

  def alerts(user, waterLevel)
    @user = user
    @waterLevel = waterLevel
    mail(to: @user.email, subject: 'Flood Alert')
  end

end

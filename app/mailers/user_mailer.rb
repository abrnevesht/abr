class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end

  def comment_email(text) #user
    @comment = text
     mail(:to => "ns.samadi@gmail.com", #user.email
         :subject => "نظر خوانندگان نشریه")
  end

  def alaki
    mail to: "ns.samadi@gmail.com", subject: "Password reset"
  end
  
end

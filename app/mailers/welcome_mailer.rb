class WelcomeMailer < ApplicationMailer
  def send_welcome_mail
    mail(to: "bunny.b4444@gmail.com",from: "appsmtp159@gmail.com", subject: "Welcome to My App") do |format|
      format.html { render 'welcome_mailer/send_welcome_mail' }
    end
  end
end


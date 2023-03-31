class WelcomeController < ApplicationController
	def index
		@message = "this is message"
	end

	def send_mail
		WelcomeMailer.send_welcome_mail.deliver_now
	end

	def sign
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	end


	private

	def user_params
		params.require[:user].permit(:name, :email, :password)
	end
end

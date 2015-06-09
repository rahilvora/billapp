class UsersController < ApplicationController
	def bill_email(user)
		@user=user

	UserMailer.email(@user).deliver
	end

end
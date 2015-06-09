class UserMailer < ApplicationMailer
	def email(user)
	@user = user
    @url  = 'localhost:3001/bills'
    mail(to: @user.email, subject: 'Please find your bill receipt')
	end
end

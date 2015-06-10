class UserMailer < ApplicationMailer
	default_url_options[:host] = "localhost:3001"
	default from: ""
	def sendBillEmail(user)
    mail(to: user.email, subject: 'Please find your bill receipt')
	end
end

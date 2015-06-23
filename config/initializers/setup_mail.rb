ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true 
ActionMailer::Base.default_url_options[:host] = ""
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "",
  :user_name            => "",
  :password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
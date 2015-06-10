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
  :openssl_verify_mode => 'none'
}
#ctkulirfvagnomll
=begin
ActionMailer::Base.perform_deliveries = true 
ActionMailer::Base.raise_delivery_errors = true 
ActionMailer::Base.default :charset => "utf-8"
ActionMailer::Base.default :content_type => "text/html"
ActionMailer::Base.default_url_options[:host] = "localhost:3001"
# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
ActionMailer::Base.smtp_settings = {
	:user_name => ENV['SENDGRID_LOGIN'],
	:password => ENV['SENDGRID_PWD'],
	:domain => 'monsite.fr',
	:adress => 'smtp.sendgrid.net',
	:port => 587,
	:authentification => :plain,
	:enable_starttls_auto => true
}

Rails.application.initialize!

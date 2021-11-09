# Load the Rails application.
require_relative "application"

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'monsite.fr',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

# Initialize the Rails application.
Rails.application.initialize!

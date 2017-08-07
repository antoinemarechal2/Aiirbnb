# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
 :address => 'smtp.sendgrid.net',
 :port => '465',
 :authentication => :plain,
 :user_name => ENV['SENDGRID_USERNAME'],
 :password => ENV['SENDGRID_PASSWORD'],
 :domain => 'alt-r.fr',
 :enable_starttls_auto => true
 }
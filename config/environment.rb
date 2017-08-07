# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
 :address => 'smtp.sendgrid.net',
 :port => '465',
 :authentication => :plain,
 :user_name => 'apikey',
 :password => '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',
 :domain => 'heroku.com',
 :enable_starttls_auto => true
 }
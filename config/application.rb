require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SiteList
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    

# add for devise
    config.action_mailer.smtp_settings = {
    :address        => "smtp.example.com",
    :port           => 25,
    :domain         => 'example.com',
    :user_name      => 'your_name@example.com',
    :password       => 'your_pass',
    :authentication => 'plain',
    :enable_starttls_auto => true } 
# end 

  end
end

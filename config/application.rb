require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OliviaDowV1
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
     config.action_mailer.smtp_settings = {
      #:address => "localhost", 
      #:port => 1025, 
      #:domain => "oliviadow.com"


      :address => 'mail.oliviadow.com',
      :port => 25,
      :domain => 'oliviadow.com',
      :user_name => 'info@oliviadow.com',
      :password => 'ballet123',
      :authentication => :plain,
      :enable_starttls_auto => true
    }

    config.action_mailer.default_url_options = {
      :host => "mail.webhero.com"
    }
    
    config.serve_static_assets = true

  end
end

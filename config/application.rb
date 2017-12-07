require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DoughEApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    #Added rack-cors config:
    
    #Allows cross-origin resource sharing:  
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        #origins 
        origins 'http://localhost:3000'
        resource '*', :headers => :any, :methods => [:get, :post, :put, :destroy, :options]
      end
    end
# End of CORS config
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end

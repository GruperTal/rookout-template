require_relative "boot"

require "rails/all"
require 'rookout'

::Rookout.start token: 'df307cbb85678936dec6351b4a9ff0f9c812918e9a51baa589c4c2fa8cce7a7a', labels: {env: "dev"}

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyRailsPostgres
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.hosts << "rails-production-adf0.up.railway.app"

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

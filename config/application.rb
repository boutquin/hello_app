require_relative "boot"

require "active_model/railtie"        # Provides model layer without database, useful for validations, etc.
require "action_controller/railtie"   # Handles web requests, essential for controllers.
require "action_view/railtie"         # Handles rendering views (templates).
require "action_mailer/railtie"       # Required for sending emails.
require "action_cable/engine"         # Enables real-time WebSocket communication.
require "active_job/railtie"          # Provides background jobs and queuing.
require "active_storage/engine"       # Manages file uploads and attachments.
require "action_mailbox/engine"       # Receives and processes incoming emails.
require "action_text/engine"          # Adds rich text capabilities to the app.
require "rails/test_unit/railtie"     # Includes the default Rails testing framework.

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.generators do |g|
      g.orm :none                # Disables ORM (ActiveRecord) generation.
    end
  end
end

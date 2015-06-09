require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GiveAFig
  class Application < Rails::Application
 #    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
 #    config.action_mailer.delivery_method = :smtp
 #    config.action_mailer.smtp_settings = {
 #    :address              => "smtp.gmail.com",
 #    :port                 => 587,
 #    :user_name            => ENV["GMAIL_USERNAME"],
 #    :password             => ENV["GMAIL_PASSWORD"]
 # }
 #    config.active_record.raise_in_transactional_callbacks = true
  end
end

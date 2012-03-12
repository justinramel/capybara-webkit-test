require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara-webkit'
require 'capybara-screenshot'

RSpec.configure do |config|
  config.before do
    Capybara.configure do |config|
      config.run_server        = false
      config.default_driver    = :webkit
      config.current_driver    = :webkit
      config.javascript_driver = :webkit
      config.default_selector  = :css
      config.app_host          = 'http://www.google.co.uk'
    end
  end
end
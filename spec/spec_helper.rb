require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara-screenshot'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.before do
    Capybara.configure do |config|
      config.run_server        = false
      config.default_driver    = :poltergeist
      config.current_driver    = :poltergeist
      config.javascript_driver = :poltergeist
      config.default_selector  = :css
      config.app_host          = 'http://www.google.co.uk'
    end
  end
end

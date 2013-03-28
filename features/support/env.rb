ENV['RACK_ENV'] = 'test'

require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'capybara-webkit'

require 'capybara_minitest_spec'
World(CapybaraMiniTestSpec)
MiniTest::Spec.new(nil)

require_relative '../../app/cuking'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
    inspector: true,
    js_errors: false,
  })
end

Capybara.configure do |config|
  config.default_driver    = :webkit
  config.javascript_driver = ENV.fetch('CAPYBARA_JS') { 'webkit' }.to_sym
  config.run_server        = false
  config.app_host          = 'http://local.cuking.com'
  config.default_wait_time = 30
end

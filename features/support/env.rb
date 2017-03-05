require 'bundler/setup'
Bundler.require :default

require 'capybara/cucumber'
# require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'
require 'rspec/expectations'

Capybara.run_server = false

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, timeout: 90, js_errors: false)
end

Capybara.javascript_driver = :poltergeist
Capybara.default_driver = :poltergeist

Capybara.default_max_wait_time = 15
Capybara.save_path = File.expand_path('../../../tmp/capybara', __FILE__)
Capybara::Screenshot.prune_strategy = :keep_last_run
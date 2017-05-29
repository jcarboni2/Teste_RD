require 'capybara/cucumber'
require 'selenium-webdriver'
require 'page-object'
require 'site_prism'
require 'rspec'


# Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Mozilla Firefox\firefox.exe'

Capybara.register_driver :selenium do |app|

  if ENV['chrome']
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  else ENV['firefox']
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
end

Capybara.default_max_wait_time = 10

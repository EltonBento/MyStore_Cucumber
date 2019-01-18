require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

#Turning the method "Helper' global
World(Helper)

ENVIRONMENT = ENV['ENVIRONMENT']
#setting up the enviroment selected
CONFIG = YAML.load_file(File.dirname(__FILE__)+ "/environment/#{ENVIRONMENT}.yml")

#Setting up Capybara
Capybara.configure do |config|
config.default_driver = :selenium
config.app_host = CONFIG['url']
config.default_max_wait_time = 10
end
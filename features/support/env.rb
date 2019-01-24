require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#to read what is in these files you use the 'require_relative'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

#Turning the method 'Helper' global, so it can be found
World(Helper)
#Turning the module 'Pages' global, so it can be found
World(Pages)

ENVIRONMENT = ENV['ENVIRONMENT']
#setting up the enviroment selected
CONFIG = YAML.load_file(File.dirname(__FILE__)+ "/environment/#{ENVIRONMENT}.yml")

#Setting up Capybara
Capybara.configure do |config|
config.default_driver = :selenium
config.app_host = CONFIG['url']
config.default_max_wait_time = 10
end
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'capybara/poltergeist'

# Capybara.default_driver = :selenium

# Capybara.javascript_driver = :poltergeist
Capybara.default_driver = :poltergeist 


Capybara.app_host = 'http://www.google.com' 
World(Capybara) 

# Generated by cucumber-sinatra. (2015-05-14 11:09:23 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/battleships.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BattleshipsWeb

class BattleshipsWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BattleshipsWebWorld.new
end

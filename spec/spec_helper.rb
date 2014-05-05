# encoding: utf-8
require 'pry'
require 'rack/test'
require 'webrat'

require_relative '../stack.rb'
require_relative 'api_helper.rb'

ENV['RACK_ENV'] = 'test'
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

Webrat.configure do |config|
  config.mode = :rack
end

RSpec.configure do |config|
  config.include Webrat::Methods
  config.include Webrat::Matchers
  config.include API::Helper
end
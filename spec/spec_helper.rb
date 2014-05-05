# encoding: utf-8
require 'pry'
require 'rack/test'

require_relative '../stack.rb'


ENV['RACK_ENV'] = 'test'
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false


RSpec.configure do |config|
end
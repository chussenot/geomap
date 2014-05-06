# encoding: utf-8
require 'bundler/setup'
Bundler.require(:default)

require 'sinatra/base'
require 'sinatra/reloader'
require 'better_errors'

Dir['./config/{initializers}/**/*.rb'].each{ |f| require f }

# encoding: utf-8
require 'bundler/setup'
Bundler.require(:default)

require 'sinatra/base'

Dir['./config/{initializers}/**/*.rb'].each{ |f| require f }
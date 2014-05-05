# encoding: utf-8

$:.unshift File.join(__FILE__, "../config")
require 'boot'
require './app/app.rb'

Stack = Rack::Builder.new {
  run GeoMap::App
}
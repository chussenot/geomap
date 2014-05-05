# encoding: utf-8

module GeoMap
  class App < Sinatra::Base
    get '/' do
      'ready'
    end
  end
end
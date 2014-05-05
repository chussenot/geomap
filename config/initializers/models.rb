require './lib/models/base/model.rb'
Dir['./lib/{models}/**/*.rb'].each{ |f| require f }
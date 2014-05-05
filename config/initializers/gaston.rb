Gaston.configure do |gaston|
  gaston.env  = ENV['RACK_ENV']
  gaston.files = Dir["./config/gaston/*.{yml,json}"]
end
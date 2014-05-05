# A sample Gemfile
source "https://rubygems.org"

ruby '2.1.1'

def linux?; !! RUBY_PLATFORM =~ /linux/ end
def darwin?; !! RUBY_PLATFORM =~ /darwin/ end
def darwin12?; !! RUBY_PLATFORM =~ /darwin12/ end

gem 'sinatra'
gem 'sinatra-contrib'
gem 'gaston'
gem 'redis'
gem 'georuby'

gem 'sinatra-assetpack', require: 'sinatra/assetpack'
gem 'coffee-script'
gem 'compass'
gem 'sass'
gem 'haml'

gem 'puma'
gem 'foreman'

gem 'rspec'
gem 'webrat'

group :development do
  # Handle Filesytem events
  gem 'guard', '~> 1.8'
  gem 'guard-rspec', '~> 3.0'
  gem 'guard-bundler', '~> 1.0'
  gem 'rb-inotify',               '~> 0.8' ,  require: linux?
  gem 'rb-fsevent',               '~> 0.9.1', require: darwin?
  gem 'terminal-notifier-guard',  '~> 1.5.3', require: darwin12?
end

# Models
gem 'ohm'
gem 'ohm-contrib'
# JSON
gem 'json', '~> 1.8'
gem 'bson_ext', '~> 1.9'
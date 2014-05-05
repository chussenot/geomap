# encoding: utf-8

module GeoMap
  class App < Sinatra::Base
    register Sinatra::AssetPack

    set     :public_folder, Proc.new { File.join(root, "../public") }
    set     :app_file, __FILE__
    set     :root, File.dirname(__FILE__)

    assets {
      serve '/css',           from: 'assets/css'
      serve '/js',            from: 'assets/js'
      serve '/img',           from: 'assets/img'
      serve '/components',    from: 'assets/components'
      css :application, [
        '/css/application.css'
      ]
      js  :application, [
        '/components/jquery/dist/jquery.js',
        '/components/underscore/underscore.js',
        '/components/polymaps/polymaps.js',
        '/js/application.js',
      ]
    }

    get '/' do
      haml :index
    end

  end
end
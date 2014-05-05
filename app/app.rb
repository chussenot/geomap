# encoding: utf-8

module GeoMap
  class App < Sinatra::Base
    register Sinatra::AssetPack
    register Sinatra::Namespace

    set     :public_folder, Proc.new { File.join(root, "../public") }
    set     :app_file, __FILE__
    set     :root, File.dirname(__FILE__)

    configure :development do
      register Sinatra::Reloader
    end

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

    namespace '/api/tests' do
      get '/fruits' do
        content_type :json
        json(['apple','banana','pear'])
      end
      get '/point' do
        content_type :json
        p = GeoRuby::SimpleFeatures::Point.from_latlong('48.853537', '2.348305')
        p.as_geojson()
      end
    end

  end
end
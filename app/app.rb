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
      use BetterErrors::Middleware
      BetterErrors.application_root = __dir__
    end

    assets {
      serve '/css',           from: 'assets/css'
      serve '/js',            from: 'assets/js'
      serve '/img',           from: 'assets/img'
      serve '/components',    from: 'assets/components'
      serve '/semantic',    from: 'assets/components/semantic-ui/build/packaged'
      css :application, [
        'http://fonts.googleapis.com/css?family=Open+Sans',
        '/semantic/css/semantic.css',
        '/components/leaflet/dist/leaflet.css',
        '/css/application.css'
      ]
      js  :application, [
        '/components/jquery/dist/jquery.js',
        '/components/underscore/underscore.js',
        '/semantic/javascript/semantic.js',
        '/components/leaflet/dist/leaflet.js',
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

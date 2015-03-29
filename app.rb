require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets do
    js :main, '/js/main.js', [
      '/js/vendor/jquery/dist/jquery.js',
      '/js/app.js'
    ]

    css :main, [
      '/css/*.css'
    ]
  end

  get '/' do
    haml :index
  end
end

if __FILE__ == $0
  App.run!
end

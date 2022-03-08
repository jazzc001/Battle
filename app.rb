require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  Battle.get '/' do
    erb(:index)
  end

  Battle.post '/names' do
    @player_1, @player_2 = params[:player_1], params[:player_2]
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
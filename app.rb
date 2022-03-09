require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  Battle.get '/' do
    erb(:index)
  end

  Battle.post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:player_1_hitpoints] = 99
    session[:player_2_hitpoints] = 99
    redirect("/play")
  end

  Battle.post '/attack' do
    session[:player_2_hitpoints] -= 10
    redirect("/play")
  end

  Battle.get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_2_hitpoints = session[:player_2_hitpoints]
    erb(:play)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
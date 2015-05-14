require 'sinatra/base'
require './lib/player'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game/new' do
    @@player = Player.new
    erb :new_game
  end

  post '/game/new' do
    @count = 0
    @@player.place Ship, params[:p1_position], params[:p1_orientation]
    @count += 1
    erb :new_game
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @damage = @@player.receive_hit params[:position]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

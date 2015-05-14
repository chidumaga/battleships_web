require 'sinatra/base'
require './lib/player'

class BattleshipsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game/new' do
    @@player1 = Player.new
    @@player2 = Player.new
    erb :new_game
  end

  post '/game/new' do
    @count = 0
    @@player1.place Ship, params[:p1_position], params[:p1_orientation]
    @count += 1
    erb :new_game
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @damage = @@player1.receive_hit params[:position]
    redirect to '/winner' if @@player1.lost? || @@player2.lost?
    erb :play
  end

  get '/winner' do
    if @@player1.lost?
      @winner = "Player 2"
    else
      @winner = "Player 1"
    end
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

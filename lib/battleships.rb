require 'sinatra/base'
require './lib/player'
require './lib/ship'
require './lib/board'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :session_secret, 'super secret'

  @@player = nil

  get '/' do
    erb :index
  end

  post '/game' do
    @@player = Player.new params[:value]
    erb :game
  end

  get '/create_ship' do
    erb :create_ship
  end

   post '/create_ship' do
    @@player.place Ship, params[:position], params[:orientation]
    erb :create_ship
  end

  get '/game/new' do
    erb :game_new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

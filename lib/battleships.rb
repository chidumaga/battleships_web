require 'sinatra/base'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    'Hello BattleShips!'
    erb :index
  end

  post '/game' do
    @value = params[:value]
    puts @value
    erb :game
  end

  get '/game/new' do
    erb :game_new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

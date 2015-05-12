require 'sinatra/base'

class BattleShips < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  get '/' do
    'Hello BattleShips!'
    erb :index
  end

  get '/game' do
    'Thanks for submitting!'
  end

  get '/game/new' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

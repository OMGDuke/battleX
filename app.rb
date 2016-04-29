require 'sinatra/base'
require_relative 'lib/player'

class BattleX < Sinatra::Base
  get '/' do
    erb :select
  end

  get '/p1_char_select' do
    erb :p1_char_select
  end

  post '/p1_set_name' do
    $player_1 = Player.new params[:player_1_name]
    redirect '/p1_attack'
  end

  get '/p1_attack' do
    erb :p1_attack
  end

  get '/p1_wait' do
    @player_1 = $player_1
    erb :p1_wait
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

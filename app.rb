require 'sinatra/base'
require_relative 'lib/player'

class BattleX < Sinatra::Base
  get '/' do
    erb :select
  end

  get '/p1_char_select' do
    @char = 1
    erb :char_select
  end

  get '/p2_char_select' do
    @char = 2
    erb :char_select
  end

  post '/p1_set_name' do
    $player_1 = Player.new params[:player_name]
    redirect '/attack'
  end

  post '/p2_set_name' do
    $player_2 = Player.new params[:player_name]
    redirect '/first_wait'
  end

  get '/attack' do
    erb :attack
  end

  get '/first_wait' do
    @player_2 = $player_2
    erb :first_wait
  end

  get '/wait' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :wait
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

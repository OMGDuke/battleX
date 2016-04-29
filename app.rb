require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

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
    $game = Game.new(Player.new(params[:player_name]))
    redirect '/first_attack'
  end

  post '/p2_set_name' do
    @game = $game
    @game.add_player_2(Player.new params[:player_name])
    redirect '/first_wait'
  end

  get '/first_wait' do
    @game = $game
    erb :first_wait
  end

  get '/first_attack' do
    @game = $game
    @game.attack
    erb :first_attack
  end

  get '/attack' do
    @game = $game
    @game.attack
    @game.switch_turn
    erb :attack
  end

  get '/wait' do
    @game = $game
    erb :wait
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

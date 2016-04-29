class Game
  attr_reader :player_1, :player_2, :attacker, :defender

  def initialize player_1
    @player_1 = player_1
    @player_2 = nil
    @attacker = @player_1
    @defender = nil
  end

  def add_player_2 player_2
    @player_2 = player_2
    @defender = @player_2
  end

  def switch_turn
    @defender = @defender == @player_1 ? @player_2 : @player_1
    @attacker = @attacker == @player_1 ? @player_2 : @player_1
  end

  def attack
    @defender.receive_damage
  end
end

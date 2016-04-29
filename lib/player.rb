class Player

  attr_reader :name, :hp

  def initialize name
    @name = name
    @hp = 10
  end

  def receive_damage
    @hp -= 1
  end
end

class Player
  FULL_HEALTH = 60
  attr_reader :name, :hp

  def initialize(name, hp = FULL_HEALTH)
    @name = name
    @hp = hp
  end

  def damage
    @hp -= 10
  end

end

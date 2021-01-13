
class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrement_life()
    @lives -= 1;
    @lives
  end

  def get_lives()
    @lives
  end

  def name()
    @name
  end

end

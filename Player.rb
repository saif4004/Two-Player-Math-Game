class Player 
  attr_accessor :name, :score, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
  def lose_life
    @lives -=1
  end

  def is_alive?
    @lives > 0
  end
  
  def to_s
    "Player: #{@name}, Lives: #{@lives}, Score: #{@score}"
  end
end
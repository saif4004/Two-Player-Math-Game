class Question 
  attr_accessor :q1 , :q2 , :answer
  def initialize
    @q1 = rand(1..20)
    @q2 = rand(1..20)
    @answer = @q1 + @q2
  end
  def generate_question
    "what is #{@q1} + #{@q2}?"
  end
  def check_answer(player_answer)
    player_answer == @answer
  end
  def to_s 
   "What does #{@q1} plus #{@q2} equal ?"
  end
end
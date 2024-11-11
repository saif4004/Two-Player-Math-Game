class Question 
  attr_accessor :q1 , :q2 , :answer
  def initialize
    @q1 = rand(1..20)
    @q2 = rand(1..20)
    @answer = @q1 + @q2
  end
  def genrate_question
    "what is #{@q1} + #{@q2}?"
  end
  def check_answer(player_answer)
    if player_answer == @answer
      "Yes, you are correct!"
    else
      "Seriously? NO!"
    end
  end
  def to_s 
   "Question: #{@q1} + #{@q2} = ?"
  end
end
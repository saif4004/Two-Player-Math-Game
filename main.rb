require_relative "Player"
require_relative "Question"

player1 = Player.new('Mike')
player2 = Player.new('Adam')

# puts player1
# puts player2

# player1.lose_life
# puts player1
# puts player1.is_alive?
# puts player1

# player1.lose_life
# puts player1.is_alive?
# puts player1
# player1.update_score
# puts player1.is_alive?
# puts player1

question1 = Question.new
puts question1.genrate_question
puts "Enter a your answer:  "
answer = gets.chomp.to_i
puts question1.check_answer(answer)

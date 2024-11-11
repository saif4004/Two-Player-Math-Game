require_relative "Player"
require_relative "Question"
class Game 
  attr_reader :player1 , :player2, :active_player
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @active_player = player1
  end
  def start_game 
    while !game_over?
      generate_question
      display_scores
      switch_turn
      if !game_over? 
        puts '----- NEW TURN -----'
      end
    end
    show_winner
     puts '----- GAME OVER -----'
     puts 'Good bye!'

  end
  def switch_turn
    @active_player = (@active_player == player1) ? player2 : player1
  end
  def generate_question 
    question = Question.new
    puts "#{active_player}: #{question.generate_question}"
    player_answer = gets.chomp.to_i

    if question.check_answer(player_answer)
      puts "Yes, you are correct!"
      active_player.update_score
    else
      puts "Seriously? NO!"
      active_player.lose_life
    end
  end
  def game_over?
    !player1.is_alive? || !player2.is_alive?
  end
  def display_scores
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end
  def show_winner 
    if player1.is_alive?
      puts "#{player1.name} Wins with a score of #{player1.score} /3"
    else
      puts "#{player2.name} Wins with a score of #{player2.score} /3"
    end
  end
end
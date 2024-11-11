require_relative "Player"

player1 = Player.new('Mike')
player2 = Player.new('Adam')

puts player1
puts player2

player1.lose_life
puts player1
puts player1.is_alive?
puts player1

player1.lose_life
puts player1.is_alive?
puts player1
player1.lose_life
puts player1.is_alive?
puts player1

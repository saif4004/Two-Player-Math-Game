require_relative "Player"
require_relative "Game"


player1 = Player.new('Mike')
player2 = Player.new('Adam')


game1 = Game.new(player1,player2)
game1.start_game

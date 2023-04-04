require_relative 'game'

puts "Player 1, please enter your name:"
player1 = Player.new(gets.chomp)
puts "Player 2, please enter your name:"
player2 = Player.new(gets.chomp)

new_game = Game.new(player1, player2)

new_game.start_game
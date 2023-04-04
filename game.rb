require_relative 'player'
require_relative 'question'

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def players_alive?
    (player1.lives != 0 && player2.lives != 0)
  end

  def start_game
    current_player = player1
    while players_alive?
      puts "----- NEW TURN -----"
      ask_question(current_player)
      if (current_player == player1)
        current_player = player2
      else
        current_player = player1
      end
    end

    if player1.lives == 0
      puts "----- GAME OVER ----"
      puts "Congrats #{player2.name} you have won with #{player2.lives} lives remaining and a final score of #{player2.score}"
      puts "Good bye!"
    else
      puts "----- GAME OVER ----"
      puts "Congrats #{player1.name} you have won with #{player1.lives} lives remaining and a final score of #{player1.score}"
      puts "Good bye!"
    end

  end


  def ask_question(player)
    question = Question.new
    puts "#{player.name}: #{question.make_question}"
    player_answer = gets.chomp.to_i

    if player_answer == question.correct_answer
      player.score += 1
      puts "YES! You are correct"
      puts "----- Lives Remaining -----"
      puts "#{player1.name}: #{player1.lives}/3 | #{player2.name}: #{player2.lives}/3"
      puts "----- Score -----"
      puts "#{player1.name}: #{player1.score} | #{player2.name}: #{player2.score}"
    else 
      player.lives -= 1
      puts "Seriously, NO!"
      puts "----- Lives Remaining -----"
      puts "#{player1.name}: #{player1.lives}/3 | #{player2.name}: #{player2.lives}/3"
      puts "----- Score -----"
      puts "#{player1.name}: #{player1.score} | #{player2.name}: #{player2.score}"
    end

  end


end



# if (player1.lives != 0 && player2.lives != 0)
#   ask_question
# elsif (!player1.lives == 0)
#   puts "Congrats #{player2.name} you have won"
# elsif (!player2.lives == 0)
#   puts "Congrats #{player1.name} you have won"
# end
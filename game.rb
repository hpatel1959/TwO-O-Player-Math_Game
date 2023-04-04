require_relative 'player'
require_relative 'question'

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def ask_question
    question = Question.new(rand(1..20), rand(1..20))
    puts "#{question.make_question}"
    player_answer = gets.chomp.to_i

    if player_answer == question.correct_answer
      puts "YES! You are correct"
    else 
      puts "Seriously, NO!"
    end

  end

end




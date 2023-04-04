class Question
  attr_accessor :num1, :num2, :correct_answer

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @correct_answer = num1 + num2
  end

  def make_question
    "What does #{num1} plus #{num2} equal?"
  end

end

# q1 = Question.new(rand(1..20), rand(1..20))

# puts q1.make_addition_question


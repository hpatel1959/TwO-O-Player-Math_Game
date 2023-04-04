class Question
  NUM_RANGE = rand(1..20)
  attr_accessor :num1, :num2, :correct_answer

  def initialize(num1 = NUM_RANGE, num2 = NUM_RANGE)
    @num1 = num1
    @num2 = num2
    @correct_answer = num1 + num2
  end

  def make_question
    "What does #{num1} plus #{num2} equal?"
  end

end



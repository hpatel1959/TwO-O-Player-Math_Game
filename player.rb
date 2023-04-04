class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

end

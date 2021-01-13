# Question class
class Question
  attr_reader :answer

  def initialize
    @int1 = rand(21)
    @int2 = rand(21)
    @answer = @int1 + @int2
  end

  def output
    "What does #{@int1} plus #{@int2} equal?"
  end

  def correct?(num)
    Integer(num) == @answer
  end
end

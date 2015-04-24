class Calculator
  attr_accessor :name
  def initialize(name = "no name")
    @name = name
  end

  def num_of_calculations
    0
  end

  def add(a, b)
    a + b
  end
end
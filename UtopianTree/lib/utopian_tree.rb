class UtopianTree
  attr_accessor :growth_cycle

  def initialize(growth_cycle)
    @growth_cycle = growth_cycle
  end

  def height(n)
    n * 2 + 1
  end
end

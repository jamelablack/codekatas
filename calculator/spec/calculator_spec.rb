require 'calculator'

describe Calculator do
  it "should have a default name" do
    calculator = Calculator.new
    no_name = calculator.name
    expect(calculator.name).to eq("no name")
  end

  it "should display the number of calculations" do
    calculator = Calculator.new
    expect(calculator.num_of_calculations).to eq(0)
  end

  it "should add 0 + 0 and return zero" do
    calculator = Calculator.new
    expect(calculator.add(0,0)).to eq(0)
  end

  it "should add 1 + 3 and return 4" do
    calculator = Calculator.new
    expect(calculator.add(1,3)).to eq(4)
  end

  it "should allow you to specify name" do
    jams_calc = Calculator.new("Jam's Calc")
    expect(jams_calc.name).to eq("Jam's Calc")
  end
end
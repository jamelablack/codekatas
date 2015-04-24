require 'rover'

# Develop an api that moves a rover around on a grid.
# You are given the initial starting point (x,y) of a rover and the
# direction (N,S,E,W) it is facing.
# The rover receives a character array of commands.
# Implement commands that move the rover forward/backward (f,b).
# Implement commands that turn the rover left/right (l,r).
# Implement wrapping from one edge of the grid to another.
# (planets are spheres after all)
# Implement obstacle detection before each move to a new square.
# If a given sequence of commands encounters an obstacle, the rover moves up to the last possible point and reports the obstacle.

describe Rover do

  let(:rover) { Rover.new([1,2], 'N') }

  describe "takes coords and a direction as initialize args" do
    it "returns the rover's coordinates" do
      expect(rover.coords).to eq([1, 2])
      expect(rover.direction).to eq('N')
    end
  end

  describe "#move" do
    context "when the rover is facing North" do
      let(:rover) { Rover.new([1,2], 'N') }

      it "f moves the rover's coords" do
        rover.move('f')
        expect(rover.coords).to eql [1, 3]
      end

      it "b moves the rover's coords" do
        rover.move('b')
        expect(rover.coords).to eql [1, 1]
      end

      it "r changes the rover's direction" do
        rover.move('r')
        expect(rover.direction).to eql 'E'
      end

      it "l changes the rover's direction" do
        rover.move('l')
        expect(rover.direction).to eql 'W'
      end
    end

    context "when the rover is facing South" do
      let(:rover) { Rover.new([1,2], 'S') }

      it "f moves the rover's coords" do
        rover.move('f')
        expect(rover.coords).to eql [1, 1]
      end

      it "b moves the rover's coords" do
        rover.move('b')
        expect(rover.coords).to eql [1, 3]
      end

      it "r changes the rover's direction" do
        rover.move('r')
        expect(rover.direction).to eql 'W'
      end

      it "l changes the rover's direction" do
        rover.move('l')
        expect(rover.direction).to eql 'E'
      end
    end

  end

end

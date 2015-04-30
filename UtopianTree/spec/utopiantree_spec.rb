require 'utopian_tree'

# In the first case (N=0), the initial height (1) of the tree remains unchanged.

# In the second case (when N = 1, i.e. after the 1st cycle), the tree doubles its height
#   as it's planted at the onset of spring.

# In the third case (N=4), the tree first doubles its height (2), then grows a meter (3), then doubles again (6), before
# growing another meter; at the end of the 4th cycle, its height is 7 meters.

describe UtopianTree do
  let(:utopian_tree) {UtopianTree.new(0)}
  it "has growth_cycle of zero" do
    expect(utopian_tree.growth_cycle).to eq(0)
  end

  describe "#height" do
    let(:utopian_tree) {UtopianTree.new(0)}
    it "has a growth cycle of zero" do
      expect(utopian_tree.height(0)).to eq(1)
    end

    let(:utopian_tree) {UtopianTree.new(1)}
    it "has a growth cycle of one" do
      expect(utopian_tree.height(1)).to eq(2)
    end

    let(:utopian_tree) {UtopianTree.new(1)}
    it "has a rowth cycle of four" do
      expect(utopian_tree.height(4)).to eq(7)
    end
  end
end

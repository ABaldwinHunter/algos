require "spec_helper"
require File.expand_path("lib/water_collector.rb")

describe WaterCollector do
  describe "initialize" do
    it "accepts an array of integers representing altitudes" do
      collector = WaterCollector.new([1, 2, 3])
      expect(collector).to be
    end

    it "raises an exception for something other than a list of integers" do
      expect { WaterCollector.new(["a", 1, 3]) }.to raise_error(WaterCollector::InvalidType)
    end
  end
end

# input
# [] -> 0
# [n] -> 0
# [n,n] -> (len < 3)

# [1, 0, 20] -> 1
# [0, 3, 0, 0, 0, 2, 10, 0] -> 7
# [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1] -> 6
# [0, 0, 0, 0, 10] -> 0
# [5, 0, 0, 0] -> 0
# [1, 1, 1, 1] -> 0
# [2] -> 0
# [4, 0, 0, 0, 4] -> 12

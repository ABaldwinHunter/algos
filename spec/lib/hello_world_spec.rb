require "spec_helper"
# require "../../hello"

describe HelloWorld do
  describe "#speak" do
    it "returns hello world" do
      world = HelloWorld.new
      expect(world.speak).to eq("hello world")
    end
  end
end

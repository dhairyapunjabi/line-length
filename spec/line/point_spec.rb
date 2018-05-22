require "spec_helper"

module Line
  describe "The point class should" do
    it "assign the values (0,0) to the correct instance variables respectively" do
      p1=Point.new(0,0)
      expect(p1.x).to eq(0)
      expect(p1.y).to eq(0)
    end
  end
end

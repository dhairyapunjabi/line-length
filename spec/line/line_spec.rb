require "spec_helper"

module Line
  describe "The line module should" do
    it "Return the value of the positive coordinate if 3 coordinates are 0 and one is positive" do
      p1=Point.new(0,0)
      p2=Point.new(0,1)
      expect(Line.new(p1,p2).distance).to eq(1)
    end
    it "Return the absolute value of the negative coordinate if 3 coordintes are zero and one is negative" do
      p1=Point.new(0,0)
      p2=Point.new(-7,0)
      expect(Line.new(p1,p2).distance).to eq(7)
    end
    it "Return the absolute value difference between x coordinates if both points are on x axis" do
      p1=Point.new(-7,0)
      p2=Point.new(-9,0)
      expect(Line.new(p1,p2).distance).to eq(2)
    end
    it "show that the length of the line is the same if the initial and final points are reversed" do
      p1=Point.new(0,7)
      p2=Point.new(0,-65)
      expect(Line.new(p1,p2).distance).to eq(72)
    end
    it "show that the length of the line is the same if the initial and final points are reversed" do
      p1=Point.new(0,0)
      p2=Point.new(1,1)
      expect(Line.new(p1,p2).distance).to eq(Line.new(p2,p1).distance)
    end
  end
end

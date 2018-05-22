require "spec_helper"

module Line
  describe "The line module should" do
    it "Return the value of the positive coordinate if 3 coordinates are 0 and one is positive" do
      p1=Point(0,0)
      p2=Point(0,1)
      expect(Line.new(p1,p2).distance).to eq(1)
    end
    it "Return the length of the line if all coordinates are positive" do
      expect(Line.new(1,2,1,7).distance).to eq(5)
    end
    it "Return the length of the line if one coordinate is negative and rest are positive" do
      expect(Line.new(1,2,10,-7).distance).to be_between(12.72,12.73)
    end
    it "Return the absolute value of the negative coordinate if 3 coordintes are zero and one is negative" do
      expect(Line.new(0,0,-7,0).distance).to eq(7)
    end
    it "show that the length of the line is the same if the initial and final points are reversed" do
      expect(Line.new(0,0,1,1).distance).to eq(Line.new(1,1,0,0).distance)
    end
    it "Return the length of the line for all -ve coordinates" do
      expect(Line.new(-9,-140,-67,-7).distance).to be_between(145.09,145.1)
    end
    it "Return 0 if both the coordinates are the same" do
      expect(Line.new(1,12,1,12).distance).to eq(0)
    end
    it "Return the length of the line for 2 negative coordinates and 2 positive coordinates" do
      expect(Line.new(1,12,-2,-5).distance).to be_between(17.262,17.263)
    end
    it "Return the length of the line for 3 negative coordinates and one positive coordinate" do
      expect(Line.new(-90,12,-83,-5).distance).to be_between(18.38,18.39)
    end
  end
end

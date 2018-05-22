require "spec_helper"

module Line
  describe "The line module should" do
    it "Return the value of the positive coordinate if 3 coordinates are 0 and one is positive" do
      p1=Point.new(0,0)
      p2=Point.new(0,1)
      expect(Line.new(p1,p2).distance).to eq(1)
    end
 end
end

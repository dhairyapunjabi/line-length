require "spec_helper"

module Line
  describe "The point class should" do
    it "assign the values (0,0) to the correct instance variables respectively" do
      point1=Point.new(0,0)
      expect(point1.x_coordinate).to eq(0)
      expect(point1.y_coordinate).to eq(0)
    end
  end
end

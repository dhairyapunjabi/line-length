require "spec_helper"

module Line
  describe "The line module should" do
    it "Return the length of the line" do
      expect(Line.new(0,0,0,1).distance).to eq(1)
    end
    it "Return the length of the line" do
      expect(Line.new(1,2,1,7).distance).to eq(5)
    end
    it "Return the length of the line" do
      expect(Line.new(1,2,10,-7).distance).to be_between(12.72,12.73)
    end
    it "Return the length of the line" do
      expect(Line.new(0,0,0,-7).distance).to eq(7)
    end
  end
end

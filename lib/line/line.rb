require "bigdecimal"
require "bigdecimal/util"
module Line
  class Line
    def initialize(x1,y1,x2,y2)
      @x1=x1
      @x2=x2
      @y1=y1
      @y2=y2
    end
    def distance
        ((@x1.to_d-@x2.to_d)**2+(@y1.to_d-@y2.to_d)**2)**0.5
    end
  end
end

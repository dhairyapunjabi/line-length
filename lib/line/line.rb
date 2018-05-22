require "bigdecimal"
require "bigdecimal/util"
module Line
  class Point
    def initialize(x,y)
      @x=x
      @y=y
    end
    attr_reader :x , :y
  end
  class Line
    def initialize(p1,p2)
      @p1=p1
      @p2=p2
    end
    def distance
      ((@p1.x.to_d-@p2.x.to_d)**2+(@p1.y.to_d-@p2.y.to_d)**2)**0.5
    end
  end
end

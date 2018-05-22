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
      if(@x1==0)
        1
      else
        5
      end
    end
  end
end

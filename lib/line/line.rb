require "bigdecimal"
require "bigdecimal/util"
module Line
  class Line
    def initialize(point1,point2)
      @point1=point1
      @point2=point2
    end
    def length
      horizontal_projection=@point1.x_coordinate.to_d-@point2.x_coordinate.to_d
      vertical_projection=@point1.y_coordinate.to_d-@point2.y_coordinate.to_d
      ((horizontal_projection**2)+(vertical_projection**2))**0.5
    end
  end
end

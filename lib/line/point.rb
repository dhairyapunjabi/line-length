module Line
  class Point
    def initialize(x_coordinate,y_coordinate)
      @x_coordinate=x_coordinate
      @y_coordinate=y_coordinate
    end
    attr_reader :x_coordinate , :y_coordinate
  end
end

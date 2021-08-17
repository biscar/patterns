module GraphEditor
  class Point
    attr_reader :start_coordinate, :end_coordinate

    def initialize(start_coordinate, end_coordinate)
      @start_coordinate = start_coordinate
      @end_coordinate = end_coordinate
    end

    def move(delta)
      @start_coordinate += delta
      @end_coordinate += delta
    end
  end
end

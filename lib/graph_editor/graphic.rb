module GraphEditor
  class Graphic
    attr_reader :point

    def initialize(point)
      @point = point
    end

    def move(delta)
      point.move(delta)
    end
  end
end

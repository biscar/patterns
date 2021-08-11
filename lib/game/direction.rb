module Game
  class Direction
    class << self
      def north
        NORTH
      end

      def south
        SOUTH
      end

      def east
        EAST
      end

      def west
        WEST
      end

      private

      NORTH = 'North'.freeze
      SOUTH = 'South'.freeze
      EAST = 'East'.freeze
      WEST = 'West'.freeze
    end
  end
end

module Game
  module Rooms
    class Room < Game::MapSite
      attr_reader :number

      def initialize(args = {})
        @number = args[:number]
        @sides = {}
      end

      def get_side(direction)
        sides[direction]
      end

      def set_side(direction, map_site)
        sides[direction] = map_site
      end

      private

      attr_reader :sides
    end
  end
end

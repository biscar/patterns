module Game
  module Doors
    class Door < Game::MapSite
      def initialize(args = {})
        @room1 = args[:room1]
        @room2 = args[:room2]

        post_initialize(args)
      end

      def post_initialize(args = {})
        @room1 = args[:room1]
        @room2 = args[:room2]
      end

      def other_side_from(room)
        room1 == room ? room2 : room1
      end

      private

      attr_reader :room1, :room2, :is_open
    end
  end
end

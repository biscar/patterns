module Game
  module Factories
    class MazeFactory
      def initialize(args = {})
        post_initialize(args)
      end

      def post_initialize(args = {})
        nil
      end

      def make_maze
        Game::Maze.new
      end

      def make_wall
        Game::Walls::Wall.new
      end

      def make_room(number)
        Game::Rooms::Room.new(number: number)
      end

      def make_door(r1, r2)
        Game::Doors::Door.new(room1: r1, room2: r2)
      end
    end
  end
end

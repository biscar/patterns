module Game
  module Prototype
    class MazePrototypeFactory < Game::Factories::MazeFactory
      def post_initialize(args = {})
        @prototype_maze = args[:maze]
        @prototype_wall = args[:wall]
        @prototype_room = args[:room]
        @prototype_door = args[:door]
      end

      def make_maze
        prototype_maze.dup
      end

      def make_wall
        prototype_wall.dup
      end

      def make_room(number)
        room = prototype_room.dup
        room.post_initialize(number: number)

        room
      end

      def make_door(r1, r2)
        door = prototype_door.dup
        door.post_initialize(room1: r1, room2: r2)

        door
      end

      private

      attr_reader :prototype_maze, :prototype_wall, :prototype_room, :prototype_door
    end
  end
end

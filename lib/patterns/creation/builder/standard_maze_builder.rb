module Patterns
  module Creation
    module Builder
      class StandardMazeBuilder < Patterns::Creation::Builder::MazeBuilder

        def build_maze
          @maze = Game::Maze.new
        end

        def build_room(number)
          return if maze.room(number)

          room = Game::Rooms::Room.new(number: number)
          maze.add_room(room)

          room.set_side(Game::Direction.north, Game::Walls::Wall.new)
          room.set_side(Game::Direction.east, Game::Walls::Wall.new)
          room.set_side(Game::Direction.south, Game::Walls::Wall.new)
          room.set_side(Game::Direction.west, Game::Walls::Wall.new)
        end

        def build_door(room_from, room_to)
          r1 = maze.room(room_from)
          r2 = maze.room(room_to)

          door = Game::Doors::Door.new(room1: r1, room2: r2)

          common_wall = do_common_wall(r1, r2)

          r1.set_side(common_wall, door)
          r2.set_side(common_wall, door)
        end

        def get_maze
          maze
        end

        private

        attr_reader :maze

        def do_common_wall(room1, room2)
          common_direction = nil

          room1.sides.each_pair do |direction, wall1|
            next if wall1.is_common

            wall2 = room2.sides[direction]

            next if wall2.is_common

            wall1.is_common = true
            wall2.is_common = true

            common_direction = direction

            break
          end

          common_direction
        end

      end
    end
  end
end

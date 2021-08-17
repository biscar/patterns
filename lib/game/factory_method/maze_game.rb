module Game
  module FactoryMethod
    class MazeGame
      class << self
        def create_maze
          maze = make_maze

          r1 = make_room(1)
          r2 = make_room(2)

          door = make_door(r1, r2)

          maze.add_room(r1)
          maze.add_room(r2)

          r1.set_side(Game::Direction.north, make_wall)
          r1.set_side(Game::Direction.east, door)
          r1.set_side(Game::Direction.south, make_wall)
          r1.set_side(Game::Direction.west, make_wall)

          r2.set_side(Game::Direction.north, make_wall)
          r2.set_side(Game::Direction.east, make_wall)
          r2.set_side(Game::Direction.south, make_wall)
          r2.set_side(Game::Direction.west, door)

          maze
        end

        # factory methods

        def make_maze
          Game::Maze.new
        end

        def make_room(number)
          Game::Rooms::Room.new(number: number)
        end

        def make_wall
          Game::Walls::Wall.new
        end

        def make_door(r1, r2)
          Game::Doors::Door.new(room1: r1, room2: r2)
        end
      end
    end
  end
end

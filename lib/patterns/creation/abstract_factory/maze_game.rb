module Patterns
  module Creation
    module AbstractFactory
      class MazeGame
        class << self
          def create_maze(factory)
            maze = factory.make_maze

            r1 = factory.make_room(1)
            r2 = factory.make_room(2)
            door = factory.make_door(r1, r2)

            maze.add_room(r1)
            maze.add_room(r2)

            r1.set_side(Game::Direction.north, factory.make_wall)
            r1.set_side(Game::Direction.east, door)
            r1.set_side(Game::Direction.south, factory.make_wall)
            r1.set_side(Game::Direction.west, factory.make_wall)

            r2.set_side(Game::Direction.north, factory.make_wall)
            r2.set_side(Game::Direction.east, factory.make_wall)
            r2.set_side(Game::Direction.south, factory.make_wall)
            r2.set_side(Game::Direction.west, door)

            maze
          end
        end
      end
    end
  end
end

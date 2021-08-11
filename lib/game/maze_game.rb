module Game
  class MazeGame
    class << self
      def create_maze
        maze = Game::Maze.new

        r1 = Game::Rooms::Room.new(number: 1)
        r2 = Game::Rooms::Room.new(number: 2)
        door = Game::Doors::Door.new(room1: r1, room2: r2)

        maze.add_room(r1)
        maze.add_room(r2)

        r1.set_side(Game::Direction.north, Game::Walls::Wall.new)
        r1.set_side(Game::Direction.east, door)
        r1.set_side(Game::Direction.south, Game::Walls::Wall.new)
        r1.set_side(Game::Direction.west, Game::Walls::Wall.new)

        r2.set_side(Game::Direction.north, Game::Walls::Wall.new)
        r2.set_side(Game::Direction.east, Game::Walls::Wall.new)
        r2.set_side(Game::Direction.south, Game::Walls::Wall.new)
        r2.set_side(Game::Direction.west, door)

        maze
      end
    end
  end
end

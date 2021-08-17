module Game
  module Factories
    class BombedMazeFactory < Game::Factories::MazeFactory
      def make_room(number)
        Game::Rooms::RoomWithABomb.new(number: number)
      end

      def make_wal
        Game::Walls::BombedWall.new
      end
    end
  end
end

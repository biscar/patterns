module Patterns
  module Creation
    module AbstractFactory
      class BombedMazeFactory < Patterns::Creation::AbstractFactory::MazeFactory
        def make_room(number)
          Game::Rooms::RoomWithABomb.new(number: number)
        end

        def make_wal
          Game::Walls::BombedWall.new
        end
      end
    end
  end
end

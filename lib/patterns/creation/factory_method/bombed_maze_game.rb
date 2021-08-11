module Patterns
  module Creation
    module FactoryMethod
      class BombedMazeGame < Patterns::Creation::FactoryMethod::MazeGame
        class << self

          def make_wall
            Game::Walls::BombedWall.new
          end

          def make_room(number)
            Game::Rooms::RoomWithABomb.new(nomer: number)
          end

        end
      end
    end
  end
end

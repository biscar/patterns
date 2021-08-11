module Patterns
  module Creation
    module FactoryMethod
      class EnchantedMazeGame < Patterns::Creation::FactoryMethod::MazeGame
        class << self

          def make_room(number)
            Game::Rooms::EnchantedRoom.new(number: number)
          end

          def make_door(r1, r2)
            Game::Doors::DoorNeedSpell.new(room1: r1, room2: r2)
          end

        end
      end
    end
  end
end

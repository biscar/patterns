module Game
  module Factories
    class EnchantedMazeFactory < Game::Factories::MazeFactory
      def make_room(number)
        Game::Rooms::EnchantedRoom.new(number: number)
      end

      def make_door(r1, r2)
        Game::Doors::DoorNeedSpell.new(room1: r1, room2: r2)
      end
    end
  end
end

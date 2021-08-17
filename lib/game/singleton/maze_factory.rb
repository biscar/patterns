require 'singleton'

module Game
  module Singleton
    class MazeFactory
      include ::Singleton

      attr_reader :factory

      def initialize
        @factory =
          case ENV['MAZESTYLE']
          when 'bombed'
            Game::Factories::BombedMazeFactory.new
          when 'enchanted'
            Game::Factories::EnchantedMazeFactory.new
          else
            Game::Factories::MazeFactory.new
          end
      end
    end
  end
end

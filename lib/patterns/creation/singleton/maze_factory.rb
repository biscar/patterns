require 'singleton'

module Patterns
  module Creation
    module Singleton
      class MazeFactory
        include ::Singleton

        attr_reader :factory

        def initialize
          @factory =
            case ENV['MAZESTYLE']
            when 'bombed'
              Patterns::Creation::AbstractFactory::BombedMazeFactory.new
            when 'enchanted'
              Patterns::Creation::AbstractFactory::EnchantedMazeFactory.new
            else
              Patterns::Creation::AbstractFactory::MazeFactory.new
            end
        end
      end
    end
  end
end


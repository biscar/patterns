require 'singleton'

module Patterns
  module Creation
    module Singleton
      class WindowSystemFactory
        include ::Singleton

        def initialize
          self.factory =
            case ENV['WINDOWSTYLE']
            when 'pm'
              Patterns::Creation::AbstractFactory::PmWindowFactory.new
            when 'x'
              Patterns::Creation::AbstractFactory::XWindowFactory.new
            end
        end

        def make_window_imp
          factory.make_window_imp
        end

        private

        attr_accessor :factory
      end
    end
  end
end

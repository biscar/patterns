module Patterns
  module Structural
    module Flyweight
      class Character < Patterns::Structural::Flyweight::Glyph
        def post_initialize(args = {})
          @char_code = args[:char]
        end

        def draw(window, glyph_context)
        end

        private

        attr_reader :char_code
      end
    end
  end
end

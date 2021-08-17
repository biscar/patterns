module Editor
  module Flyweight
    class Character < Editor::Flyweight::Glyph
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

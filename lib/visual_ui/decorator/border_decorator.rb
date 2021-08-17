module VisualUi
  module Decorator
    class BorderDecorator < VisualUi::Decorator::Decorator
      def post_initialize(args = {})
        @width = args[:width]
      end

      def draw
        super

        draw_border
      end

      private

      attr_reader :width

      def draw_border
        width
      end
    end
  end
end

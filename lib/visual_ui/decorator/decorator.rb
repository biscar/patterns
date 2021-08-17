module VisualUi
  module Decorator
    class Decorator < VisualUi::VisualComponent
      def initialize(visual_component, args = {})
        @component = visual_component

        post_initialize(args)
      end

      def post_initialize(args={})
      end

      def draw
        component.draw
      end

      def resize
        component.resize
      end

      private

      attr_reader :component
    end
  end
end

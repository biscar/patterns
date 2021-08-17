require 'unit/test_helper'

class DecoratorTest < MiniTest::Test
  def test_decorator
    text_view = VisualUi::TextView.new
    visual_component = VisualUi::Decorator::ScrollDecorator.new(text_view)

    content = VisualUi::Decorator::BorderDecorator.new(visual_component, width: 1)

    window = VisualUi::Window.new
    window.set_contents(content)

    assert_equal(1, window.draw)
  end
end

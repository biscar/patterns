require 'unit/test_helper'

class AdapterTest < MiniTest::Test
  def test_text_shape
    text_shape = DrawingEditor::Adapter::TextShape.new(DrawingEditor::TextView.new)

    assert_equal(5, text_shape.bounding_box(1, 2))
    refute(text_shape.is_empty)
    assert_equal('created', text_shape.create_manipulator)
  end
end

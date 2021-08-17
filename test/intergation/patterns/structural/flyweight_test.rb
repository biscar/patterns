require 'unit/test_helper'

class FlyweightTest < MiniTest::Test
  def test_flyweight
    text = 'Object-oriented program'

    factory = Editor::GlyphFactory.new
    text.each_char { |char| factory.create_character(char) }

    gc = Editor::Flyweight::GlyphContext.new

    times12 = Editor::Font.new('Times-Roman-12')
    times_italic12 = Editor::Font.new('Times-Italic-12')

    gc.set_font(times12, text.size)

    assert_equal(times12, gc.get_font)

    gc.insert(7)
    gc.set_font(times_italic12, 8)

    assert_equal(times_italic12, gc.get_font)

    (0..text.size-1).each do |index|
      gc.insert(index)

      if (7..15).include?(index)
        assert_equal(times_italic12, gc.get_font)
      else
        assert_equal(times12, gc.get_font)
      end
    end
  end
end

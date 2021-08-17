require 'unit/test_helper'

class MediatorTest < MiniTest::Test
  def test_mediator
    director = Dialog::Mediators::FontDialogDirector.new
    director.create_widgets

    director.button_ok.handle_mouse(nil)
    director.button_cancel.handle_mouse(nil)
    director.list_font.handle_mouse(nil)
    director.field_font_name.handle_mouse(nil)

    assert_equal('ok', director.button_ok.text)
    assert_equal('cancel', director.button_cancel.text)
    assert_equal('font', director.list_font.text)
    assert_equal('font_name', director.field_font_name.text)
  end
end

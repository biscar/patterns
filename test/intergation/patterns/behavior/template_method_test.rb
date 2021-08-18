require 'unit/test_helper'

class TemplateMethodTest < MiniTest::Test
  def test_template_method
    my_view = AppKit::MyView.new
    my_view.display

    assert(my_view.displayed)
  end
end

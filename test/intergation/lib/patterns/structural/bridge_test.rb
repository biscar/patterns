require 'unit/test_helper'

class BridgeTest < MiniTest::Test
  def setup
    Singleton.__init__(Patterns::Creation::Singleton::WindowSystemFactory)
  end

  def test_pm_window
    ENV['WINDOWSTYLE'] = 'pm'

    application_window = WindowUi::ApplicationWindow.new

    assert_equal('WindowUi::ApplicationWindow', application_window.draw_contents)
    assert_equal(10, application_window.draw_rect(5, 5))

    icon_window = WindowUi::IconWindow.new
    assert_equal(0, icon_window.draw_contents)
  end

  def test_x_window
    ENV['WINDOWSTYLE'] = 'x'

    application_window = WindowUi::ApplicationWindow.new

    assert_equal('WindowUi::ApplicationWindow', application_window.draw_contents)
    assert_equal(20, application_window.draw_rect(5, 5))

    icon_window = WindowUi::IconWindow.new
    assert_equal(0, icon_window.draw_contents)
  end
end

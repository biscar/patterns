require 'unit/test_helper'

class StrategyTest < MiniTest::Test
  def test_strategy
    quick = InterViews::Composition.new(compositor: InterViews::SimpleCompositor.new)
    slick = InterViews::Composition.new(compositor: InterViews::TeXCompositor.new)
    iconic = InterViews::Composition.new(compositor: InterViews::ArrayCompositor.new)

    assert_equal(1, quick.repair)
    assert_equal(10, slick.repair)
    assert_equal(20, iconic.repair)
  end
end

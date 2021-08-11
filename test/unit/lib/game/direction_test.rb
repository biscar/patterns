require 'unit/test_helper'

class DirectionTest < MiniTest::Test
  def setup
    @object = Game::Direction
  end

  def test_north
    assert_equal('North', @object.north)
  end

  def test_west
    assert_equal('West', @object.west)
  end

  def test_south
    assert_equal('South', @object.south)
  end

  def test_east
    assert_equal('East', @object.east)
  end
end

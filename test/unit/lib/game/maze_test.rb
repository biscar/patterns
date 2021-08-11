require 'unit/test_helper'

class MazeTest < MiniTest::Test
  def setup
    @object = Game::Maze.new
  end

  def test_room
    room = MiniTest::Mock.new
    2.times { room.expect(:number, 1) }

    @object.add_room(room)
    assert_equal(1, @object.room(1).number)

    room.verify
  end
end

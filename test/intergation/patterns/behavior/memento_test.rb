require 'unit/test_helper'

class CommandTest < MiniTest::Test
  def test_memento
    point = GraphEditor::Point.new(1, 2)
    graphic = GraphEditor::Graphic.new(point)

    mover = GraphEditor::MoveCommand.new
    mover.move_command(graphic, 10)
    mover.execute

    assert_equal(11, graphic.point.start_coordinate)
    assert_equal(12, graphic.point.end_coordinate)

    mover.unexecute

    assert_equal(1, graphic.point.start_coordinate)
    assert_equal(2, graphic.point.end_coordinate)
  end
end

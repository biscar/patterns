require 'unit/test_helper'

class MazeGameTest < MiniTest::Test
  def setup
    @object = Game::MazeGame.create_maze
  end

  def test_game
    assert_instance_of(Game::Maze, @object)
  end
end

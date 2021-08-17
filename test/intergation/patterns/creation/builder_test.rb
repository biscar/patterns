require 'unit/test_helper'

class BuilderTest < MiniTest::Test
  def setup
    @game = Game::Builders::MazeGame
  end

  def test_standard_maze_factory
    maze = @game.create_maze(Game::Builders::StandardMazeBuilder.new)

    assert_instance_of(Game::Maze, maze)
  end
end

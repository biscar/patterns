require 'unit/test_helper'

class FactoryMethodTest < MiniTest::Test
  def test_maze_game
    maze = Game::FactoryMethod::MazeGame
    game = maze.create_maze

    assert_instance_of(Game::Maze, game)
  end

  def test_bombed_maze_game
    maze = Game::FactoryMethod::BombedMazeGame
    game = maze.create_maze

    assert_instance_of(Game::Maze, game)
  end

  def test_enchanted_maze_game
    maze = Game::FactoryMethod::EnchantedMazeGame
    game = maze.create_maze

    assert_instance_of(Game::Maze, game)
  end

end

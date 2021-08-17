require 'unit/test_helper'

class SingletonTest < MiniTest::Test
  def setup
    Singleton.__init__(Patterns::Creation::Singleton::MazeFactory)
  end

  def test_bombed_maze
    ENV['MAZESTYLE'] = 'bombed'

    singleton = Patterns::Creation::Singleton::MazeFactory.instance

    assert_instance_of(Game::Factories::BombedMazeFactory, singleton.factory)
    maze = Game::Factories::MazeGame.create_maze(singleton.factory)

    assert_instance_of(Game::Maze, maze)
  end

  def test_bombed_maze
    ENV['MAZESTYLE'] = 'enchanted'

    singleton = Patterns::Creation::Singleton::MazeFactory.instance

    assert_instance_of(Game::Factories::EnchantedMazeFactory, singleton.factory)
    maze = Game::Factories::MazeGame.create_maze(singleton.factory)

    assert_instance_of(Game::Maze, maze)
  end
end

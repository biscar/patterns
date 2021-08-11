require 'unit/test_helper'

class SingletonTest < MiniTest::Test

  def test_bombed_maze
    ENV['MAZESTYLE'] = 'bombed'

    singleton = Patterns::Creation::Singleton::MazeFactory.instance

    assert_instance_of(Patterns::Creation::AbstractFactory::BombedMazeFactory, singleton.factory)
    maze = Patterns::Creation::AbstractFactory::MazeGame.create_maze(singleton.factory)

    assert_instance_of(Game::Maze, maze)
  end

end

require 'unit/test_helper'

class AbstractFactoryTest < MiniTest::Test
  def setup
    @game = Patterns::Creation::AbstractFactory::MazeGame
  end

  def test_bombed_maze_factory
    maze = @game.create_maze(Patterns::Creation::AbstractFactory::BombedMazeFactory.new)

    assert_instance_of(Game::Maze, maze)

    room = maze.room(1)
    assert_instance_of(Game::Rooms::RoomWithABomb, room)
  end

  def test_enchanted_maze_factory
    maze = @game.create_maze(Patterns::Creation::AbstractFactory::EnchantedMazeFactory.new)

    assert_instance_of(Game::Maze, maze)

    room = maze.room(1)
    assert_instance_of(Game::Rooms::EnchantedRoom, room)
  end

  def test_maze_factory
    maze = @game.create_maze(Patterns::Creation::AbstractFactory::MazeFactory.new)

    assert_instance_of(Game::Maze, maze)

    room = maze.room(1)
    assert_instance_of(Game::Rooms::Room, room)
  end
end

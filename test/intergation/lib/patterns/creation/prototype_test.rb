require 'unit/test_helper'

class PrototypeTest < MiniTest::Test

  def test_simple_maze
    prototype = Patterns::Creation::Prototype::MazePrototypeFactory.new(maze: Game::Maze.new, wall: Game::Walls::Wall.new,
      door: Game::Doors::Door.new, room: Game::Rooms::Room.new)

    game = Patterns::Creation::AbstractFactory::MazeGame.create_maze(prototype)

    assert_instance_of(Game::Maze, game)
  end

  def test_bombed_maze
    prototype = Patterns::Creation::Prototype::MazePrototypeFactory.new(maze: Game::Maze.new, wall: Game::Walls::BombedWall.new,
      door: Game::Doors::Door.new, room: Game::Rooms::RoomWithABomb.new)

    game = Patterns::Creation::AbstractFactory::MazeGame.create_maze(prototype)

    assert_instance_of(Game::Maze, game)
  end

end

require 'unit/test_helper'
require 'unit/lib/game/wall_interface_test'
require 'unit/lib/game/map_site_interface_test'

class BombedWallTest < MiniTest::Test
  include WallInterfaceTest
  include MapSiteInterfaceTest

  def setup
    @wall = @object = Game::Walls::BombedWall.new
  end
end

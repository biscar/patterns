require 'unit/test_helper'
require 'unit/lib/game/wall_interface_test'
require 'unit/lib/game/map_site_interface_test'

class WallTest < MiniTest::Test
  include WallInterfaceTest
  include MapSiteInterfaceTest

  def setup
    @wall = @object = Game::Walls::Wall.new
  end
end

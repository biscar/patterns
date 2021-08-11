require 'unit/test_helper'
require 'unit/lib/game/map_site_interface_test'

class DoorTest < MiniTest::Test
  include DoorInterfaceTest
  include MapSiteInterfaceTest

  def setup
    @door = @object = Game::Doors::Door.new
  end
end

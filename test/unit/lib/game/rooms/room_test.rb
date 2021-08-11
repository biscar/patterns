require 'unit/test_helper'
require 'unit/lib/game/map_site_interface_test'
require 'unit/lib/game/room_interface_test'

class RoomTest < MiniTest::Test
  include RoomInterfaceTest
  include MapSiteInterfaceTest

  def setup
    @room = @object = Game::Rooms::Room.new
  end
end

require 'unit/test_helper'
require 'unit/lib/game/map_site_interface_test'

class DoorNeedSpellTest < MiniTest::Test
  include DoorInterfaceTest
  include MapSiteInterfaceTest

  def setup
    @door_need_spell = @object = Game::Doors::DoorNeedSpell.new
  end
end

require 'unit/test_helper'

class BridgeTest < MiniTest::Test
  def test_computer
    cabinet = Computer::Cabinet.new(name: 'PC Cabinet')
    chassis = Computer::Chassis.new(name: 'PC Chassis')

    bus = Computer::Bus.new(name: 'MCA Bus', power: 10, net_price: 100, discount_price: 90)
    floppy = Computer::FloppyDisk.new(name: '3.5in Floppy', power: 1, net_price: 10, discount_price: 5)

    cabinet.add(chassis)

    chassis.add(bus)
    chassis.add(floppy)

    assert_equal(11, cabinet.power)
    assert_equal(110, cabinet.net_price)
    assert_equal(95, cabinet.discount_price)
  end
end

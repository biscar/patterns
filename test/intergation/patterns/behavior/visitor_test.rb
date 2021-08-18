require 'unit/test_helper'

class VisitorTest < MiniTest::Test
  def setup
    @bus = Computer::Equipments::Bus.new(net_price: 50, discount_price: 5, power: 10)
    @chassis = Computer::Equipments::Chassis.new
    @chassis.add(@bus)
    @floppy_disk = Computer::Equipments::FloppyDisk.new(net_price: 5, discount_price: 2, power: 1)
    @cabinet = Computer::Equipments::Cabinet.new
    @cabinet.add(@floppy_disk)
  end

  def test_inventory_visitor
    inventory_visitor = Computer::InventoryVisitor.new
    inventory_visitor.visit_bus(@bus)
    inventory_visitor.visit_chassis(@chassis)
    inventory_visitor.visit_floppy_disk(@floppy_disk)
    inventory_visitor.visit_cabinet(@cabinet)

    assert_equal(22, inventory_visitor.power)
  end

  def test_pricing_test
    pricing_visitor = Computer::PricingVisitor.new
    pricing_visitor.visit_floppy_disk(@floppy_disk)
    pricing_visitor.visit_bus(@bus)
    pricing_visitor.visit_chassis(@chassis)
    pricing_visitor.visit_floppy_disk(@floppy_disk)
    pricing_visitor.visit_cabinet(@cabinet)

    assert_equal(20, pricing_visitor.total)
  end
end

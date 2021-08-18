module Computer
  class InventoryVisitor < Computer::EquipmentVisitor
    attr_reader :inventory

    def post_initialize(args = {})
      @inventory = Computer::Inventory.new
    end

    def power
      inventory.power
    end

    def visit_floppy_disk(floppy_disk)
      inventory.accumulate(floppy_disk)
    end

    def visit_chassis(chassis)
      inventory.accumulate(chassis)
    end

    def visit_bus(bus)
      inventory.accumulate(bus)
    end

    def visit_cabinet(cabinet)
      inventory.accumulate(cabinet)
    end
  end
end

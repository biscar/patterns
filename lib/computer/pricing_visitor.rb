module Computer
  class PricingVisitor < Computer::EquipmentVisitor
    attr_reader :total

    def post_initialize(args = {})
      @total = 0
    end

    def visit_floppy_disk(floppy_disk)
      @total += floppy_disk.net_price
    end

    def visit_chassis(chassis)
      @total += chassis.discount_price
    end

    def visit_bus(bus)
      @total += bus.discount_price
    end
  end
end

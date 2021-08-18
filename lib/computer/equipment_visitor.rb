module Computer
  class EquipmentVisitor
    def initialize(args = {})
      post_initialize(args)
    end

    def post_initialize(args = {})
    end

    def visit_floppy_disk(floppy_disk)
    end

    def visit_cabinet(cabinet)
    end

    def visit_chassis(chassis)
    end

    def visit_bus(bus)
    end
  end
end

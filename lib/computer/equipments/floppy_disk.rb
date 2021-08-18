module Computer
  module Equipments
    class FloppyDisk < Computer::Equipments::Equipment
      def accept(visitor)
        visitor.visit_floppy_disk(self)
      end
    end
  end
end

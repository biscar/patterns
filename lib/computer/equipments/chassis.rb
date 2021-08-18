module Computer
  module Equipments
    class Chassis < Computer::Composite::CompositeEquipment
      def accept(visitor)
        visitor.visit_chassis(self)
      end
    end
  end
end

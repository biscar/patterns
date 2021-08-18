module Computer
  module Equipments
    class Cabinet < Computer::Composite::CompositeEquipment
      def accept(visitor)
        visitor.visit_cabinet(self)
      end
    end
  end
end

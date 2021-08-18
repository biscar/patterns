module Computer
  module Equipments
    class Bus < Computer::Equipments::Equipment
      def accept(visitor)
        visitor.visit_bus(self)
      end
    end
  end
end

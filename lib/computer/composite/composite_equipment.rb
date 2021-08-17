module Computer
  module Composite
    class CompositeEquipment < Computer::Equipment
      def post_initialize(args = {})
        @equipments = []
      end

      def net_price
        equipments.map(&:net_price).sum
      end

      def power
        equipments.map(&:power).sum
      end

      def discount_price
        equipments.map(&:discount_price).sum
      end

      def add(equipment)
        equipments << equipment
      end

      def remove(equipment)
        equipments.delete(equipment)
      end

      private

      attr_reader :equipments
    end
  end
end
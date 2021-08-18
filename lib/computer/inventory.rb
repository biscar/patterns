module Computer
  class Inventory
    attr_reader :power

    def initialize(args = {})
      @power = 0
    end

    def accumulate(equipment)
      @power += equipment.power
    end
  end
end



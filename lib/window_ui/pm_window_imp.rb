# Concrete Implementor - конкретный реализатор
module WindowUi
  class PmWindowImp < WindowUi::WindowImp
    def device_rect(coord1, coord2, coord3, coord4)
      (coord1 + coord2 + coord3 + coord4) / 2
    end
  end
end

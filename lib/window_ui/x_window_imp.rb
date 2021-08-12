# Concrete Implementor - конкретный реализатор
module WindowUi
  class XWindowImp < WindowUi::WindowImp
    def device_rect(coord1, coord2, coord3, coord4)
      coord1 + coord2 + coord3 + coord4
    end
  end
end

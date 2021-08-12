# Уточнённая абстракция
# расширяет интерфейс, определённый абстракцией
module WindowUi
  class IconWindow < WindowUi::Window
    def draw_contents
      window_imp.device_bitmap('icon', 0.0, 0.0)
    end
  end
end

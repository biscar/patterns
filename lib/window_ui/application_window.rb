# Уточнённая абстракция
# расширяет интерфейс, определённый абстракцией
module WindowUi
  class ApplicationWindow < WindowUi::Window
    def draw_contents
      view.draw_on(self)
    end
  end
end

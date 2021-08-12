# Abstraction - абстракция
# - определяет интерфейс абстракции
# - хранит ссылку на обьект типа Implementor
module WindowUi
  class Window
    # запросы, обрабатываемые окном
    def draw_contents
      0
    end

    def open
      0
    end

    # запросы, перенаправляемые реализации
    def draw_rect(point1, point2)
      window_imp.device_rect(point1, point2, point1, point2)
    end

    protected

    def window_imp
      Patterns::Creation::Singleton::WindowSystemFactory.instance.make_window_imp
    end

    def view
      WindowUi::View
    end
  end
end



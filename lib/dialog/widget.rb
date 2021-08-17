module Dialog
  class Widget
    attr_reader :text

    def initialize(args = {})
      @director = args[:director]
    end

    def changed
      director.widget_changed(self)
    end

    def handle_mouse(event)
      changed
    end

    def set_text(text)
      self.text = text
    end

    private

    attr_reader :director
    attr_writer :text
  end
end

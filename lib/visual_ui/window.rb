module VisualUi
  class Window
    def set_contents(content)
      @content = content
    end

    def draw
      content.draw
    end

    private

    attr_reader :content
  end
end

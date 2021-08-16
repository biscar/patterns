module Documents
  class Graphic
    def initialize(args = {})
      post_initialize(args = {})
    end

    def post_initialize(args = {})
    end

    def draw(at)
    end

    def handle_mouse(event)
    end

    def get_extent
      0
    end

    def load(from)
    end

    def save(to)
    end
  end  
end

module InterViews
  class Composition
    def initialize(args = {})
      @compositor = args[:compositor]
    end

    def repair(args = {})
      break_count = compositor.compose(args)

      break_count
    end

    private

    attr_reader :compositor
  end
end

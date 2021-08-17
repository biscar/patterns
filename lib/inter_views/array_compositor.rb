module InterViews
  class ArrayCompositor < InterViews::Compositor
    def post_initialize(args = {})
      @interval = args.fetch(:interval, 100)
    end

    def compose(params = {})
      20
    end


    private

    attr_reader :interval

  end
end
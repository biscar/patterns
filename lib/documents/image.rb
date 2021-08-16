module Documents
  class Image < Documents::Graphic
    def post_initialize(args = {})
      @file = args[:file]
    end

    private

    attr_reader :file
  end
end

module Help
  class Widget < Help::HelpHandler
    def post_initialize(args = {})
      @parent = @successor
    end

    private

    attr_reader :parent
  end
end

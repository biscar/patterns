module Help
  class Widget < Patterns::Behavior::ChainOfResponsibility::HelpHandler
    def post_initialize(args = {})
      @parent = @successor
    end

    private

    attr_reader :parent
  end
end

module Help
  class Application < Patterns::Behavior::ChainOfResponsibility::HelpHandler
    def handle_help
      'показать список разделов справки'
    end
  end
end

module Menu
  class SimpleCommand < Menu::Command
    def post_initialize(args = {})
      @action = args[:action]
      @receiver = args[:receiver]
    end

    def execute
      receiver.send(action)
    end

    private

    attr_reader :action, :receiver
  end
end



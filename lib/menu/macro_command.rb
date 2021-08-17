module Menu
  class MacroCommand < Menu::Command
    def post_initialize(args = {})
      @cmds = []
    end

    def add(command)
      cmds << command
    end

    def remove(command)
      cmds.delete(command)
    end

    def execute
      cmds.each(&:execute)
    end

    private

    attr_accessor :cmds
  end
end

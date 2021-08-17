module Menu
  class OpenCommand < Menu::Command
    def ask_user
      'question'
    end

    def execute
      name = ask_user

      if name
        document = Menu::Document.new(name: name)
        document.open
      end
    end
  end
end

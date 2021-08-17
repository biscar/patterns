module Menu
  class PasteCommand < Menu::Command
    def post_initialize(args = {})
      @document = args[:document]
    end

    def execute
      document.paste
    end

    private

    attr_reader :document
  end
end

module Menu
  class Document
    def initialize(args = {})
      @name = args[:name]
    end

    def open
      name
    end

    def paste
      name
    end

    private

    attr_reader :name
  end
end



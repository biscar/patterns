module Editor
  class GlyphFactory
    def initialize
      @character = {}
    end

    def create_character(char)
      if !character[char]
        character[char] = Editor::Flyweight::Character.new(char: char)
      end

      character[char]
    end

    def create_row
      Editor::Flyweight::Row.new
    end

    def create_column
      Editor::Flyweight::Column.new
    end

    private

    attr_reader :character
  end
end

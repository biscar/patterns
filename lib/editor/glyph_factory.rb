module Editor
  class GlyphFactory
    def initialize
      @character = {}
    end

    def create_character(char)
      if !character[char]
        character[char] = Patterns::Structural::Flyweight::Character.new(char: char)
      end

      character[char]
    end

    def create_row
      Patterns::Structural::Flyweight::Row.new
    end

    def create_column
      Patterns::Structural::Flyweight::Column.new
    end

    private

    attr_reader :character
  end
end

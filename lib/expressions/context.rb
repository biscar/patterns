module Expressions
  class Context
    def initialize
      @variables = {}
    end

    def lookup(char)
      return char if char.is_a?(::TrueClass) || char.is_a?(::FalseClass)

      variables.each_pair do |exp, value|
        return value if exp.name == char
      end
    end

    def assign(variable_exp, bool)
      variables[variable_exp] = bool
    end

    private

    attr_reader :variables
  end
end

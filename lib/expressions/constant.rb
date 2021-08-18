module Expressions
  class Constant < Expressions::BooleanExp
    def post_initialize(args = {})
      @name = args[:name].dup
    end

    def evaluate(context)
      context.lookup(name)
    end

    def replace(name, boolean_exp)
      if name.casecmp(@name) == 0
        boolean_exp.copy
      else
        Expressions::VariableExp.new(name: name)
      end
    end

    def copy
      Expressions::VariableExp.new(name: name)
    end

    private

    attr_reader :name
  end
end

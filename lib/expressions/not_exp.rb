module Expressions
  class NotExp < Expressions::BooleanExp
    def post_initialize(args = {})
      @boolean_exp1 = args[:boolean_exp1].dup
    end

    def evaluate(context)
      !boolean_exp1.evaluate(context)
    end

    def replace(name, boolean_exp)
      Expressions::NotExp.new(boolean_exp1: boolean_exp1.replace(name, boolean_exp))
    end

    def copy
      Expressions::NotExp.new(boolean_exp1: boolean_exp1.copy)
    end

    private

    attr_reader :boolean_exp1
  end
end

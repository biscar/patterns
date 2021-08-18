module Expressions
  class OrExp < Expressions::BooleanExp
    def post_initialize(args = {})
      @boolean_exp1 = args[:boolean_exp1]
      @boolean_exp2 = args[:boolean_exp2]
    end

    def evaluate(context)
      boolean_exp1.evaluate(context) || boolean_exp2.evaluate(context)
    end

    def replace(name, boolean_exp)
      Expressions::OrExp.new(boolean_exp1: boolean_exp1.replace(name, boolean_exp),
                             boolean_exp2: boolean_exp2.replace(name, boolean_exp))
    end

    def copy
      Expressions::OrExp.new(boolean_exp1: boolean_exp1.copy, boolean_exp2: boolean_exp2.copy)
    end

    private

    attr_reader :boolean_exp1, :boolean_exp2
  end
end

module Expressions
  class BooleanExp
    def initialize(args = {})
      post_initialize(args)
    end

    def post_initialize(args = {})
    end

    def evaluate(context)
      0
    end

    def replace(char, boolean_exp)
      0
    end

    def copy
      0
    end
  end
end

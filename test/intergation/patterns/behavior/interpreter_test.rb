require 'unit/test_helper'

class InterpreterTest < MiniTest::Test
  def test_interpreter
    x = Expressions::VariableExp.new(name: 'X')
    y = Expressions::VariableExp.new(name: 'Y')

    # (true and x) or (y and (not x))
    exp1 = Expressions::AndExp.new(boolean_exp1: Expressions::Constant.new(name: true), boolean_exp2: x)
    exp2 = Expressions::AndExp.new(boolean_exp1: y, boolean_exp2:  Expressions::NotExp.new(boolean_exp1: x))
    expression = Expressions::OrExp.new(boolean_exp1: exp1, boolean_exp2: exp2)

    context = Expressions::Context.new
    context.assign(x, false)
    context.assign(y, true)

    assert(expression.evaluate(context))
  end
end

require 'unit/test_helper'

class FacadeTest < MiniTest::Test
  def test_expression_node
    compiler = Patterns::Structural::Facade::CompilerFacade.new

    assert_instance_of(Compiler::Nodes::ExpressionNode, compiler.compile('1', 'code'))
  end

  def test_statement_node
    compiler = Patterns::Structural::Facade::CompilerFacade.new

    assert_instance_of(Compiler::Nodes::StatementNode, compiler.compile('1', 1))
  end
end

module Compiler
  module Nodes
    class ExpressionNode < Compiler::Nodes::ProgramNode
      def traverse(code_generator)
        code_generator.visit(self)
      end
    end
  end
end

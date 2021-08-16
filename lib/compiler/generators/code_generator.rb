module Compiler
  module Generators
    class CodeGenerator
      def initialize(output)
        @output = output
      end

      def visit(statement_node)
      end

      def code_generator(byte_code_stream)
      end

      private

      attr_reader :output
    end
  end
end

module Patterns
  module Structural
    module Facade
      class CompilerFacade
        def compile(input, output)
          scanner = Compiler::Scanner.new(input)
          builder = Compiler::ProgramNodeBuilder.new(output)
          parser = Compiler::Parser.new

          parser.parse(scanner, builder)

          generator = Compiler::Generators::RiscCodeGenerator.new(output)

          parse_tree = builder.get_root_node
          parse_tree.traverse(generator)

          parse_tree
        end
      end
    end
  end
end

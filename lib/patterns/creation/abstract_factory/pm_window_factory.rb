module Patterns
  module Creation
    module AbstractFactory
      class PmWindowFactory
        def make_window_imp
          WindowUi::PmWindowImp.new
        end
      end
    end
  end
end

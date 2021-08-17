module WindowUi
  module Factories
    class PmWindowFactory
      def make_window_imp
        WindowUi::PmWindowImp.new
      end
    end
  end
end

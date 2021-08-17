module WindowUi
  module Factories
    class XWindowFactory
      def make_window_imp
        WindowUi::XWindowImp.new
      end
    end
  end
end

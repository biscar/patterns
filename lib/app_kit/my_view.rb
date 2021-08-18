module AppKit
  class MyView < AppKit::View
    def display
      @displayed = true
    end
  end
end

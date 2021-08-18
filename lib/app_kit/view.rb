module AppKit
  class View
    attr_reader :displayed

    def display
      set_focus
      do_display
      reset_focus
    end

    private

    def set_focus
    end

    def reset_focus
    end

    def do_display
    end
  end
end

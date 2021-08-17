module Dialog
  module Mediators
    class FontDialogDirector < Dialog::Mediators::DialogDirector
      attr_reader :button_ok, :button_cancel, :list_font, :field_font_name

      def create_widgets
        self.button_ok = Dialog::Button.new(director: self)
        self.button_cancel = Dialog::Button.new(director: self)
        self.list_font = Dialog::ListBox.new(director: self)
        self.field_font_name = Dialog::EntryField.new(director: self)
      end

      def widget_changed(widget)
        case widget
        when button_ok
          button_ok.set_text('ok')
        when button_cancel
          button_cancel.set_text('cancel')
        when list_font
          list_font.set_text('font')
        when field_font_name
          field_font_name.set_text('font_name')
        end
      end

      private

      attr_writer :button_ok, :button_cancel, :list_font, :field_font_name
    end
  end
end

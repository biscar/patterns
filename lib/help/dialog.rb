module Help
  class Dialog < Help::Widget
    def handle_help
      if has_help
        'справка Dialog'
      else
        successor.handle_help
      end
    end
  end
end

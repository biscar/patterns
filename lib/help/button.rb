module Help
  class Button < Help::Widget
    def handle_help
      if has_help
        'справка Button'
      else
        parent.handle_help
      end
    end
  end
end

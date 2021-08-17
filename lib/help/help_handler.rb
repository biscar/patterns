module Help
  class HelpHandler
    def initialize(args = {})
      @successor = args[:help_handler]
      @topic = args.fetch(:topic, NO_HELP_TOPIC)

      post_initialize(args)
    end

    def post_initialize(args = {})
    end

    def has_help
      topic != NO_HELP_TOPIC
    end

    def set_handler(help_handler, topic)
      @successor = help_handler
      @topic = topic
    end

    def handle_help
      if successor
        successor.handle_help
      end
    end

    private

    NO_HELP_TOPIC = -1.freeze

    attr_reader :successor, :topic
  end
end

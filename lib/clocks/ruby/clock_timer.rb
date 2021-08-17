require 'observer'

module Clocks
  module Ruby
    class ClockTimer
      include Observable

      def post_initialize(args = {})
        @time = args.fetch(:time, Time.now)
      end

      def get_hour
        time.hour
      end

      def get_minute
        time.min
      end

      def get_second
        time.sec
      end

      def tick
        @time = Time.now

        changed # notify observers
        notify_observers(self)
      end

      private

      attr_reader :time
    end
  end
end



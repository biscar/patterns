module Clocks
  class ClockTimer < Clocks::Subject
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

      notify
    end

    private

    attr_reader :time
  end
end

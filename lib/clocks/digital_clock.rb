module Clocks
  class DigitalClock < Clocks::Observer
    attr_reader :current_time

    def initialize(args = {})
      @subject = args[:timer]
      @subject.attach(self)
    end

    def draw
      hour = subject.get_hour
      min = subject.get_minute
      sec = subject.get_second

      @current_time = "DigitalClock = #{hour} - #{min} - #{sec}"
    end

    def update(changed_object)
      draw if subject == changed_object
    end

    private

    attr_reader :subject
  end
end

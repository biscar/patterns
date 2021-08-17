require 'unit/test_helper'

class ObserverTest < MiniTest::Test
  def test_observer
    timer = Clocks::ClockTimer.new

    analog_clock = Clocks::AnalogClock.new(timer: timer)
    digital_clock = Clocks::DigitalClock.new(timer: timer)

    assert_nil(analog_clock.current_time)
    assert_nil(digital_clock.current_time)

    timer.tick

    assert_equal("AnalogClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}", analog_clock.current_time)
    assert_equal("DigitalClock = #{timer.get_hour} - #{timer.get_minute} - #{timer.get_second}", digital_clock.current_time)
  end
end

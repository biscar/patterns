module Tcp
  class TcpConnection
    attr_reader :state

    def initialize(args = {})
      @state = Tcp::TcpClosed.instance
    end

    def active_open
      state.active_open(self)
    end

    def passive_open
      state.passive_open(self)
    end

    def close
      state.close(self)
    end

    def send
      state.send(self)
    end

    def acknowledge
      state.acknowledge(self)
    end

    def synchronize
      state.synchronize(self)
    end

    def process_octet(stream)
      stream
    end

    def change_state(tcp_state)
      @state = tcp_state
    end
  end
end

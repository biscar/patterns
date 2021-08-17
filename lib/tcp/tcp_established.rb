module Tcp
  class TcpEstablished < Tcp::TcpState
    def transmit(tcp_connection, stream)
      tcp_connection.process_octet(stream)
    end

    def close(tcp_connection)
      change_state(tcp_connection, Tcp::TcpListen.instance)
    end
  end
end

module Tcp
  class TcpListen < Tcp::TcpState
    def send(tcp_connection)
      change_state(tcp_connection, Tcp::TcpEstablished.instance)
    end
  end
end

module Tcp
  class TcpClosed < Tcp::TcpState
    def active_open(tcp_connection)
      # do something
      change_state(tcp_connection, Tcp::TcpEstablished.instance)
    end

    def passive_open(tcp_connection)
      # do something
      change_state(tcp_connection, Tcp::TcpListen.instance)
    end
  end
end

require 'unit/test_helper'

class StateTest < MiniTest::Test
  def test_state
    connection = Tcp::TcpConnection.new
    assert_kind_of(Tcp::TcpClosed, connection.state)

    connection.active_open
    assert_kind_of(Tcp::TcpEstablished, connection.state)

    connection.close
    assert_kind_of(Tcp::TcpListen, connection.state)

    connection.send
    assert_kind_of(Tcp::TcpEstablished, connection.state)
  end
end

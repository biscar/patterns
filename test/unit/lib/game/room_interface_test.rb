module RoomInterfaceTest
  def test_responds_to_get_side
    assert_respond_to(@object, :get_side)
  end

  def test_responds_to_set_side
    assert_respond_to(@object, :set_side)
  end

  def test_responds_to_number
    assert_respond_to(@object, :number)
  end
end

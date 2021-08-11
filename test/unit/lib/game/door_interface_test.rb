module DoorInterfaceTest
  def test_responds_to_other_side_from
    assert_respond_to(@object, :other_side_from)
  end
end

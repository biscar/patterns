require 'unit/test_helper'

class IteratorTest < MiniTest::Test
  def test_iterator
    letters = %w[a b c]

    list = Iterators::ListIterator.new(letters)

    list.first
    assert_equal('a', list.current_item)

    list.next
    assert_equal('b', list.current_item)

    list.next
    assert_equal('c', list.current_item)

    list.next
    assert(list.is_done)
  end
end

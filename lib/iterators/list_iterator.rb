module Iterators
  class ListIterator < Iterators::Iterator
    def first
      @current_index = 0
    end

    def next
      @current_index += 1
    end

    def is_done
      current_index >= list.size
    end

    def current_item
      raise 'Iterator Out Of Bounds' if is_done

      list[current_index]
    end

    private

    attr_reader :current_index
  end
end

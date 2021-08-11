module Game
  class Maze
    def initialize
      @rooms = {}
    end

    def add_room(room)
      rooms[room.number] = room
    end

    def room(number)
      rooms[number]
    end

    private

    attr_reader :rooms
  end
end

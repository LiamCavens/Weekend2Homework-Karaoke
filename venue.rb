class Venue

    attr_reader :name, :till, :rooms

    def initialize(name, till, rooms)
        @name = name
        @till = till
        @rooms = rooms
    end

end
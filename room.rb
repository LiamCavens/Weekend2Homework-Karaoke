class Room

    attr_reader :name, :room_limit

    def initialize(name, song, room_limit)
        @name = name
        @song = song 
        @guest = []
        @room_limit = room_limit
    end

    def song_count()
        return @song.count()
    end

    def check_in_guest(guest)
        return @guest.push(guest)
    end

    def check_out_guest(guest)
        return @guest.delete(guest)
    end

    def count_guests_in_room()
        return @guest.length()
    end

    def no_entry_when_full()
        return "No Entry" if count_guests_in_room() > @room_limit
    end
end
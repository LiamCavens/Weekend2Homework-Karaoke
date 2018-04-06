class Room

    attr_reader :name

    def initialize(name, song)
        @name = name
        @song = song 
        @guest = []
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
end
class Room

    attr_reader :name

    def initialize(name, song, guest)
        @name = name
        @song = song 
        @guest = guest
    end

    def song_count()
        return @song.count()
    end
end
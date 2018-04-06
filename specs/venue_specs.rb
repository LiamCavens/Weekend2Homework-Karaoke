require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../venue.rb')

class VenueTest < MiniTest::Test

    def setup()
        @song1 = Song.new("Babel", "Mumford & Sons")
        @song2 = Song.new("In the Morning", "Razorlight")
        @song3 = Song.new("Save Tonight", "Cherry Eyed Eagle")
        @song4 = Song.new("Hold On", "Moguai")
        @song5 = Song.new("Golden Touch", "The Kooks")
        songs = [@song1, @song3, @song5]
        songs2 = [@song1, @song2, @song3, @song4, @song5]
        @room1 = Room.new("Disco", songs, 3)
        @room2 = Room.new("Dance", songs2, 6)
        rooms = [@room1, @room2]
        @venue1 = Venue.new("The Squealling Giraffe", 100, rooms)

    end

    def test_venue_has_name()
        assert_equal("The Squealling Giraffe", @venue1.name)
    end

    def test_venue_has_money()
        assert_equal(100, @venue1.till)
    end

    def test_how_many_rooms_venue_has()
        assert_equal(2, @venue1.rooms.count)
    end
end
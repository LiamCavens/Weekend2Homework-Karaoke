require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test
    
    def setup()
        @guest1 = Guest.new("Liam")
        @song1 = Song.new("Babel", "Mumford & Sons")
        @song2 = Song.new("In the Morning", "Razorlight")
        @song3 = Song.new("Save Tonight", "Cherry Eyed Eagle")
        songs = [@song1, @song2, @song3]
        @room1 = Room.new("Disco", songs, @guest1)
    end

    def test_room_has_name()
        assert_equal("Disco", @room1.name)
    end

    def test_room_has_songs()
        assert_equal(3, @room1.song_count())
    end

   
end


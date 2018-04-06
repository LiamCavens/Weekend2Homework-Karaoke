require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test
    
    def setup()
        @guest1 = Guest.new("Liam")
        @guest2 = Guest.new("Stuart")
        @guest3 = Guest.new("Jamie")
        @guest4 = Guest.new("Ross")
        @song1 = Song.new("Babel", "Mumford & Sons")
        @song2 = Song.new("In the Morning", "Razorlight")
        @song3 = Song.new("Save Tonight", "Cherry Eyed Eagle")
        songs = [@song1, @song2, @song3]
        @room1 = Room.new("Disco", songs, 3)
    end

    def test_room_has_name()
        assert_equal("Disco", @room1.name)
    end

    def test_room_has_songs()
        assert_equal(3, @room1.song_count())
    end

    def test_room_check_in_guest()
        assert_equal(1, @room1.check_in_guest(@guest1).count)
    end

    def test_room_check_out_guest()
        @room1.check_in_guest(@guest1)
        @room1.check_in_guest(@guest2)
        @room1.check_out_guest(@guest1)
        assert_equal(1, @room1.count_guests_in_room())
    end

    def test_no_entry_on_full_room()
        @room1.check_in_guest(@guest1)
        @room1.check_in_guest(@guest2)
        @room1.check_in_guest(@guest3)
        @room1.check_in_guest(@guest4)
        assert_equal("No Entry", @room1.no_entry_when_full())
    end
end


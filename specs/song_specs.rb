require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test
    
    def setup()
        @song1 = Song.new("Babel", "Mumford & Sons")
    end

    def test_song_has_name()
        assert_equal("Babel", @song1.name)
    end

    def test_song_has_artist()
        assert_equal("Mumford & Sons", @song1.artist)
    end

end
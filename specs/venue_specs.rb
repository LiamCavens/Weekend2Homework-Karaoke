require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../venue.rb')
require_relative('../drink.rb')

class VenueTest < MiniTest::Test

    def setup()
        @guest1 = Guest.new("Liam", 20, "Babel", 25)
        @guest3 = Guest.new("Jamie", 15, "It's Alright", 12)
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
        @drink1 = Drink.new("Lager", 1.00)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Vodka", 3.00)
        drinks = [@drink1, @drink2, @drink3]
        @venue1 = Venue.new("The Squealling Giraffe", 100, rooms, 5, drinks)

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

    def test_take_money_on_entry()
        assert_equal(105, @venue1.take_money_on_entry())
    end

    def test_if_customer_old_enough__enter()
        assert_equal("Welcome to The Squealling Giraffe", @venue1.guest_entry_age(@guest1))
    end

    def test_if_customer_old_enough_underage()
        assert_equal("Fuck off", @venue1.guest_entry_age(@guest3))
    end
end
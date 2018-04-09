require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../venue.rb')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../drink.rb')

class TestGuest < MiniTest::Test
    
    def setup()
        @guest1 = Guest.new("Liam", 20, "Babel", 25)
        @song1 = Song.new("Babel", "Mumford & Sons")
        @song2 = Song.new("In the Morning", "Razorlight")
        @song3 = Song.new("Save Tonight", "Cherry Eyed Eagle")
        songs = [@song1, @song2, @song3]
        @room1 = Room.new("Disco", songs, 3)
        @drink1 = Drink.new("Lager", 1.00)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Vodka", 3.00)
        drinks = [@drink1, @drink2, @drink3]
        @venue1 = Venue.new("The Squealling Giraffe", 100, @room1, 5, drinks)
    end

    def test_guest_has_name()
        assert_equal("Liam", @guest1.name)
    end

    def test_guest_has_money()
        assert_equal(20, @guest1.wallet)
    end

    def test_guest_pays_entry()
        assert_equal(15, @guest1.give_money_on_entry(@venue1))
    end

    def test_guest_doesnt_have_money_to_get_in()
        @guest = Guest.new("Junkie", 1.50, "Pencil Full Of Lead")
        assert_equal("I Can't Get In", @guest.give_money_on_entry(@venue1))
    end

    def test_favourite_tune_is_on()
        assert_equal("This Tunes ma favourite, pure belter", @guest1.guests_favourite_tune_comes_on(@song1))
    end

    def test_guest_gets_drink()
        @guest1.guest_gets_drink(@drink1)
        assert_equal(1, @guest1.get_drink_in_drink_tab())
    end

    def test_pay_for_tab__remove_money_from_wallet()
        @guest1.guest_gets_drink(@drink1)
        @guest1.guest_gets_drink(@drink2)
        @guest1.guest_gets_drink(@drink3)
        @guest1.guest_pays_for_tab()
         assert_equal(11, @guest1.wallet)
    end

end
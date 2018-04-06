require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test
    
    def setup()
        @guest1 = Guest.new("Liam")
    end

    def test_guest_has_name()
        assert_equal("Liam", @guest1.name)
    end

    def test_guest_checks_in()
        assert_equal()
    end
end
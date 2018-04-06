require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test
    
        def setup()
            @drink = Drink.new("Lager", 1.00)
        end

    def test_drink_has_name()
        assert_equal("Lager", @drink.name)
    end

    def test_drink_has_price()
        assert_equal(1.00, @drink.price)
    end

end
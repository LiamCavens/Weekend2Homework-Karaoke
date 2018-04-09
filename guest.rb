class Guest

    attr_reader :name, :wallet, :favourite_tune, :age

    def initialize(name, wallet, favourite_tune, age)
        @name = name
        @wallet = wallet
        @favourite_tune = favourite_tune
        @drink_tab = []
        @age = age
    end

    def give_money_on_entry(venue)
        if venue.entry_price <= @wallet
            return @wallet -= venue.entry_price
        else
            "I Can't Get In"
        end
    end

    def guests_favourite_tune_comes_on(song)
        if @favourite_tune = song.name
            return "This Tunes ma favourite, pure belter"
        else
            return "Tunes alright but I'll sing it"
        end
    end

    def guest_gets_drink(drink)
       return @drink_tab.push(drink)
    end

    def get_drink_in_drink_tab()
        return @drink_tab.length()
    end

    def guest_pays_for_tab()
        for drink in @drink_tab
            @wallet -= drink.price
        end
    end
end
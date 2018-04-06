class Guest

    attr_reader :name, :wallet, :favourite_tune

    def initialize(name, wallet, favourite_tune)
        @name = name
        @wallet = wallet
        @favourite_tune = favourite_tune
        @drink_tab = []
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
end
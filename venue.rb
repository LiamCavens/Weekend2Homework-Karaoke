class Venue

    attr_reader :name, :till, :rooms, :entry_price, :drinks

    def initialize(name, till, rooms, entry_price, drinks)
        @name = name
        @till = till
        @rooms = rooms
        @entry_price = entry_price
        @drinks = drinks
    end

    def take_money_on_entry()
        return @till += @entry_price
    end

    def guest_entry_age(guest)
        if guest.age >= 18 
           "Welcome to #{@name}"
        else
            "Fuck off"
        end
    end
end
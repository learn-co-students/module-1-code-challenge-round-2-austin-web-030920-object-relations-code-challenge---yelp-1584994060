class Review
    attr_accessor :rating

    @@all = []
    
    def initialize(customer, resaurant, rating)
        @customer = customer
        @resaurant = resaurant
        @rating = rating
        @@all<<self
        @resaurant.reviews<<self
        @customer.reviews<<self
    end

    def self.all
        @@all
    end

    def customer
        @customer
    end

    def resaurant
        @resaurant
    end
end
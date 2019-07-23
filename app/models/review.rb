class Review

    attr_accessor :restaurant, :customer, :content, :rating

    @@all = []

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        Customer.all.find{|i| i.full_name == self.customer}
    end

    def restaurant
        Restaurant.all.select{|i| i.name == self.restaurant}
    end

    def rating
        self.rating
    end

    def content
        self.content
    end


end
class Review
    attr_reader :customer, :restaurant, :rating, :content

    @@all =[]
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content

        Review.all << self
    end

    # Class methods

    def self.all
        @@all
    end

    # Instance methods
  
end

